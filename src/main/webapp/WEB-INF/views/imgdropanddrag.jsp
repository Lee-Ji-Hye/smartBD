<!DOCTYPE html>
<html>
<head>

    <title> 드래그앤드롭 </title>
    <meta charset="utf-8">
    
    <style>
    .dragtarget{
        width:100px;
        height:100px;
        background-color:tomato;

    }
    .dragInner{
        width:inherit;
        height:30px;
        background-color:slateblue;

        color:white;
    }
    .dropzone{
        position:absolute;
        width:500px;
        height:500px;
        background-color:yellowgreen;

        left:300px;
        top:300px;
    }
    </style>
</head>
<body>
    <div class="dragtarget">
        <div class="dragInner" draggable="true" ondragstart="dragStart_(event)" ondrag="drag_(event)">
            Drag Target
        </div>
    </div>



    <div class ="dropzone" droppable="true" ondragover="dragOver_(event)" ondrop="drop_(event)"> Drop Zone </div>
<script>
        function dragStart_(e){
                console.warn('drag Start');
            var parentNode = e.target.parentElement;
            e.dataTransfer.setDragImage(parentNode,0,0);    
        }
        function drag_(e){
            console.log("drag");
        }

        function dragOver_(e){
            e.preventDefault();
            console.log('dragOver');
            
        }

        function drop_(e){
            console.log("drop");
        }
</script>
</body>
</html>


