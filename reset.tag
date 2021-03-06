<reset>
    <button>Replay</button>

    <script>
        this.on('mount', () => {
            this.root.querySelector('button').addEventListener('click', reset);
        })

        function reset() {
            let bigCells = document.querySelectorAll(".big-cell");
            for (let i = 0; i < bigCells.length; i++) {
                bigCells[i].style.removeProperty('background-color');
                bigCells[i].classList.remove("board-done");
                bigCells[i].classList.add("active-board");
                let smallCells = bigCells[i].querySelectorAll(".small-cell");
                for (let i = 0; i < smallCells.length; i++) {
                    smallCells[i].style.removeProperty('background-color');
                    smallCells[i].innerText = '';
                }
            }
            document.querySelector('#endgame').style.display = "none";
            bus.trigger('reset-game');
        }
    </script>
</reset>