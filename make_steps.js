const initial_height = 0.2; 
const height_per_step = 4;
const max_height = 200.2;
const max_left = 0;
const max_right = 205;
let steps = (max_height - initial_height)/height_per_step;
console.log(steps);

let current_height = initial_height;

while(current_height < max_height) {
    console.log("G0 X" + max_left + " Y10 Z" + current_height)
    console.log("G0 X" + max_right + " Y10")
    current_height += height_per_step;

    console.log("G0 X" + max_right + " Y10 Z" + current_height)
    console.log("G0 X" + max_left + " Y10")
    current_height += height_per_step;
}

console.log("G0 X" + max_left + " Y10 Z" + current_height)
console.log("G0 X" + max_right + " Y10")



