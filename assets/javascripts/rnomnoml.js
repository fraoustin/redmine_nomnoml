$(document).ready(function() {
    console.log("nomnoml");
    var i = 0
    if (document.querySelectorAll('.nomnoml').length > 0) {
        i = i +1
        var script = document.createElement("script")
        script.src = '/plugin_assets/redmine_nomnoml/javascripts/nomnoml.js'
        script.onload = function(){
            Array.from(document.querySelectorAll('.nomnoml')).forEach(elt => {
                var canvas = document.createElement("canvas");
                canvas.className = "nomnoml"
                canvas.setAttribute('id','nomnoml' + i)
                elt.parentNode.insertBefore(canvas, elt)
                nomnoml.draw(canvas, elt.innerText);
            });
        }
        document.head.appendChild(script)
    }

});

