const path = require("path");
const fs = require("fs").promises;
const bmp = require("bmp-js");

const SCREEN_COLUMNS = 16;

function diffBitmap(a, b) {
    if (a.length !== b.length) {
        throw "Buffer length does not match";
    }

    const diff = [];

    for (let i = 0; i < a.length; i++) {
        if (a[i] !== b[i]) {
            diff.push({ index: i, color: a[i] });
        }
    }

    return diff;
}

function convertBitmap(bitmap) {
    if (bitmap.length % 4 !== 0) {
        throw "Illegal buffer length";
    }

    const data = [];

    for (let i = 0; i < bitmap.length; i += 4) {
        const bitColor = (bitmap[i + 1] / 16) | 0;
        if (bitColor > 7) {
            data.push(15);
        } else {
            data.push(0);
        }
    }

    return data;
}

function generatePixelConstant(index, color) {
    const y = ((index / SCREEN_COLUMNS) | 0) + 2;
    const x = index % SCREEN_COLUMNS;

    let result = x | (y << 4) | (color << 8);

    return result;
}

function diffBitmap(a, b) {
    if (a.length !== b.length) {
        throw "Buffer length does not match";
    }

    const diff = [];

    for (let i = 0; i < a.length; i++) {
        if (a[i] !== b[i]) {
            diff.push({ index: i, color: a[i] });
        }
    }

    return diff;
}

(async function () {
    let file = "v3.0 hex words plain\r\n";
    const baseDir = "frames";

    const frames = (await fs.readdir(baseDir))
        .sort((a, b) => parseInt(a.substring(5, 9)) - parseInt(b.substring(5, 9)));

    let imagesProcessed = 0;
    let previousBitmap = null;

    for (const f of frames) {
        imagesProcessed++;
        const bitmap = convertBitmap(bmp.decode(await fs.readFile(path.join(baseDir, f))).data);

        if (previousBitmap == null) {
            for (let i = 0; i < bitmap.length; i++) {
                const pixelConstant = generatePixelConstant(i, bitmap[i]);
                file += `a${pixelConstant.toString(16).padStart(3, "0")}\r\n`;
            }
        } else {
            const diff = diffBitmap(bitmap, previousBitmap);

            for (p of diff) {
                const pixelConstant = generatePixelConstant(p.index, p.color);
                file += `a${pixelConstant.toString(16).padStart(3, "0")}\r\n`;
            }
        }

        previousBitmap = bitmap;
    }

    console.log(`Frames processed: ${imagesProcessed}`);
    await fs.writeFile("bad_apple.hex", file);
})();