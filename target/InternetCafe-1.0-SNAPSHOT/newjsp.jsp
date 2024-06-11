<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Custom Checkbox with Icon</title>
<style>
/* Remove the default appearance */
.custom-checkbox {
    appearance: none;
    -webkit-appearance: none;
    -moz-appearance: none;
    width: 20px;
    height: 20px;
    border: 2px solid #999;
    border-radius: 4px;
    position: relative;
    cursor: pointer;
    outline: none;
}

/* Create a custom checkbox look using ::before */
.custom-checkbox::before {
    content: '';
    position: absolute;
    top: 50%;
    left: 50%;
    width: 0;
    height: 0;
    background-color: transparent;
    transform: translate(-50%, -50%);
    transition: width 0.3s, height 0.3s;
}

/* Custom style for checked state */
.custom-checkbox:checked {
    /*background-color: #2196F3;*/
    border-color: #2196F3;
    background-color: yellow;
    /*content: '/2341';*/
    /*color: yellow;*/
}

.custom-checkbox:checked::before {
    width: 5px;
    height: 10px;
    border: solid white;
    border-width: 0 2px 2px 0;
    transform: translate(-50%, -50%) rotate(45deg);
}

/* Hover effect */
.custom-checkbox:hover {
    border-color: #666;
}

/* Focus effect */
.custom-checkbox:focus {
    box-shadow: 0 0 2px 2px rgba(33, 150, 243, 0.5);
}

</style>
</head>
<body>
<input type="checkbox" class="custom-checkbox" />
</body>
</html>
