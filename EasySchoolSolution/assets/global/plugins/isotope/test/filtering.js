( function() {

'use strict';

var $ = window.jQuery;

// return a string of item ids
function getFilteredItemIDs( iso ) {
  var texts = [];
  for ( var i=0, len = iso.filteredItems.length; i < len; i++ ) {
    var item = iso.filteredItems[i];
    var id = item.element.getAttribute('data-item-id');
    texts.push( id );
  }
  return texts.join(',');
}

/*
<div data-item-id="1" class="item orange">5</div>
<div data-item-id="2" class="item">3</div>
<div data-item-id="3" class="item orange tall">2</div>
<div data-item-id="4" class="item tall">9</div>
<div data-item-id="5" class="item">7</div>
<div data-item-id="6" class="item orange">1</div>
<div data-item-id="7" class="item orange tall">8</div>
*/

test( 'filtering', function() {

  var iso = new Isotope( '#filtering', {
    isJQueryFiltering: false,
    transitionDuration: 0
  });

  var ids = getFilteredItemIDs( iso );
  equal( ids, '1,2,3,4,5,6,7', 'all items there by default' );

  function checkFilter( filter, expectedIDs, message ) {
    iso.arrange({ filter: filter });
    ids = getFilteredItemIDs( iso );
    equal( ids, expectedIDs, message || filter );
  }

  checkFilter( '.orange', '1,3,6,7' );
  checkFilter( '.tall', '3,4,7' );
  checkFilter( '.tall.orange', '3,7' );

  iso.arrange({
    filter: function( elem ) {
      var num = parseInt( getText( elem ), 10 );
      return num > 5;
    }
  });
  ids = getFilteredItemIDs( iso );
  equal( ids, '4,5,7', 'function, text is greater than 5' );

  // filter with jQuery
  iso.options.isJQueryFiltering = true;

  checkFilter( '.orange', '1,3,6,7', '.orange with jQuery' );
  checkFilter( '.tall', '3,4,7', '.orange with jQuery' );
  checkFilter( '.tall.orange', '3,7', '.tall.orange with jQuery' );
  
  checkFilter( ':not(.orange)', '2,4,5' );
  checkFilter( '.orange:not(.tall)', '1,6' );

  iso.arrange({
    filter: function() {
      var num = parseInt( $(this).text(), 10 );
      return num > 5;
    }
  });
  ids = getFilteredItemIDs( iso );
  equal( ids, '4,5,7', 'function, text is greater than 5, with jQuery' );

});

})();
