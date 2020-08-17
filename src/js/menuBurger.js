


    document.addEventListener('DOMContentLoaded', () => {

        
        const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);
      
        
        if ($navbarBurgers.length > 0) {
      
          
          $navbarBurgers.forEach( el => {
            el.addEventListener('click', () => {
      
              
              const target = el.dataset.target;
              const $target = document.getElementById(target);
      
             
              el.classList.toggle('is-active');
              $target.classList.toggle('is-active');
      
            });
          });
        }
      
      });


      var afficher='yes' ;
      

    function mask(){
        if(afficher=='yes'){

            document.getElementById('buttons').style.display='none';
           document.getElementById('drop_1').style.display='none';
            document.getElementById('drop_2').style.display='none';
            
            // ****************************************

            afficher='non' ;
        }
        else{
           document.getElementById('buttons').style.display='block';
            document.getElementById('drop_1').style.display='block';
            document.getElementById('drop_2').style.display='block';
            afficher='yes' ;
        }
        
    }

    function mask_page(){
        if(afficher=='yes'){

           // document.getElementById('buttons').style.display='none';
           document.getElementById('drop_1').style.display='none';
            document.getElementById('drop_2').style.display='none';
            document.getElementById('drop_3').style.display='none';
            
            // ****************************************

            afficher='non' ;
        }
        else{
           //document.getElementById('buttons').style.display='block';
            document.getElementById('drop_1').style.display='block';
            document.getElementById('drop_2').style.display='block';
            document.getElementById('drop_3').style.display='block';
            afficher='yes' ;
        }
        
    }