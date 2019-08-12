<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>

<!-- main  -->
<div class="u-summernote-editor">
  <div class="js-summernote-editor" data-height="160" style="display: none;"></div>
	<div class="note-editor note-frame">
		<div class="note-dropzone">  
  			<div class="note-dropzone-message"></div>
  		</div>
  		<div class="note-toolbar" role="toolbar" style="position: relative; top: 0px; width: 100%;">
   			<div class="note-btn-group note-style">
  	 			<div class="note-btn-group">
   					<button type="button" class="note-btn dropdown-toggle" role="button" tabindex="-1" data-toggle="dropdown" aria-label="Style">
   						<i class="note-icon-magic"></i> 
   						<span class="note-icon-caret"></span>
  					</button>
			   		<div class="note-dropdown-menu dropdown-style" role="list" aria-label="Style">
			   			<a class="note-dropdown-item" href="#" data-value="p" role="listitem" aria-label="p">
			   				<p>Normal</p>
			   			</a>
			   			<a class="note-dropdown-item" href="#" data-value="blockquote" role="listitem" aria-label="blockquote">
			   				<blockquote>Quote</blockquote>
			   			</a>
					   <a class="note-dropdown-item" href="#" data-value="pre" role="listitem" aria-label="pre">
					   <pre>Code</pre>
					   </a>
					   <a class="note-dropdown-item" href="#" data-value="h1" role="listitem" aria-label="h1">
					   	<h1>Header 1</h1></a>
					   <a class="note-dropdown-item" href="#" data-value="h2" role="listitem" aria-label="h2">
					   	<h2>Header 2</h2></a>
					   <a class="note-dropdown-item" href="#" data-value="h3" role="listitem" aria-label="h3">
					   	<h3>Header 3</h3></a>
					   <a class="note-dropdown-item" href="#" data-value="h4" role="listitem" aria-label="h4">
					   	<h4>Header 4</h4></a>
					   <a class="note-dropdown-item" href="#" data-value="h5" role="listitem" aria-label="h5">
					   	<h5>Header 5</h5></a>
					   <a class="note-dropdown-item" href="#" data-value="h6" role="listitem" aria-label="h6">
					   	<h6>Header 6</h6></a>
			   		</div>
  				</div>
 			</div>
	   <div class="note-btn-group note-font">
		   <button type="button" class="note-btn note-btn-bold" role="button" tabindex="-1" aria-label="Bold (CTRL+B)">
		  	 <i class="note-icon-bold"></i>
		   </button>
		   <button type="button" class="note-btn note-btn-underline" role="button" tabindex="-1" aria-label="Underline (CTRL+U)">
		   	<i class="note-icon-underline"></i>
		   </button>
		   <button type="button" class="note-btn" role="button" tabindex="-1" aria-label="Remove Font Style (CTRL+\)">
		   	<i class="note-icon-eraser"></i>
		   </button>
		</div>
	   <div class="note-btn-group note-fontname">
		   	<div class="note-btn-group">
		   		<button type="button" class="note-btn dropdown-toggle" role="button" tabindex="-1" data-toggle="dropdown" aria-label="Font Family">
		   			<span class="note-current-fontname" style="font-family: Poppins;">Poppins</span> 
		   			<span class="note-icon-caret"></span>
		  		</button>
		   <div class="note-dropdown-menu note-check dropdown-fontname" role="list" aria-label="Font Family">
		   	<a class="note-dropdown-item" href="#" data-value="Arial" role="listitem" aria-label="Arial">
		   		<i class="note-icon-menu-check"></i> 
		   		<span style="font-family: 'Arial'">Arial</span>
		   	</a>
		   <a class="note-dropdown-item" href="#" data-value="Arial Black" role="listitem" aria-label="Arial Black">
		   		<i class="note-icon-menu-check"></i> 
		   		<span style="font-family: 'Arial Black'">Arial Black</span>
		   </a>
		   <a class="note-dropdown-item" href="#" data-value="Comic Sans MS" role="listitem" aria-label="Comic Sans MS">
		   		<i class="note-icon-menu-check"></i> 
		   		<span style="font-family: 'Comic Sans MS'">Comic Sans MS</span>
		   </a>
		   <a class="note-dropdown-item" href="#" data-value="Courier New" role="listitem" aria-label="Courier New">
		   		<i class="note-icon-menu-check"></i> 
		   		<span style="font-family: 'Courier New'">Courier New</span>
		   </a>
		   <a class="note-dropdown-item" href="#" data-value="Helvetica" role="listitem" aria-label="Helvetica">
		  	 	<i class="note-icon-menu-check"></i> 
		   		<span style="font-family: 'Helvetica'">Helvetica</span>
		   </a>
		   <a class="note-dropdown-item" href="#" data-value="Impact" role="listitem" aria-label="Impact">
		   		<i class="note-icon-menu-check"></i> 
		   		<span style="font-family: 'Impact'">Impact</span>
		   </a>
		   <a class="note-dropdown-item" href="#" data-value="Tahoma" role="listitem" aria-label="Tahoma"><i class="note-icon-menu-check"></i> <span style="font-family: 'Tahoma'">Tahoma</span></a><a class="note-dropdown-item" href="#" data-value="Times New Roman" role="listitem" aria-label="Times New Roman"><i class="note-icon-menu-check"></i> <span style="font-family: 'Times New Roman'">Times New Roman</span></a><a class="note-dropdown-item" href="#" data-value="Verdana" role="listitem" aria-label="Verdana"><i class="note-icon-menu-check"></i> <span style="font-family: 'Verdana'">Verdana</span></a><a class="note-dropdown-item checked" href="#" data-value="Poppins" role="listitem" aria-label="Poppins"><i class="note-icon-menu-check"></i> <span style="font-family: 'Poppins'">Poppins</span></a></div></div></div><div class="note-btn-group note-fontsize"><div class="note-btn-group"><button type="button" class="note-btn dropdown-toggle" role="button" tabindex="-1" data-toggle="dropdown" aria-label="Font Size"><span class="note-current-fontsize">16</span> <span class="note-icon-caret"></span></button><div class="note-dropdown-menu note-check dropdown-fontsize" role="list" aria-label="Font Size"><a class="note-dropdown-item" href="#" data-value="8" role="listitem" aria-label="8">
		   		<i class="note-icon-menu-check"></i> 8</a>
		   <a class="note-dropdown-item" href="#" data-value="9" role="listitem" aria-label="9">
		   		<i class="note-icon-menu-check"></i> 9</a><a class="note-dropdown-item" href="#" data-value="10" role="listitem" aria-label="10"><i class="note-icon-menu-check"></i> 10</a><a class="note-dropdown-item" href="#" data-value="11" role="listitem" aria-label="11"><i class="note-icon-menu-check"></i> 11</a><a class="note-dropdown-item" href="#" data-value="12" role="listitem" aria-label="12"><i class="note-icon-menu-check"></i> 12</a><a class="note-dropdown-item" href="#" data-value="14" role="listitem" aria-label="14"><i class="note-icon-menu-check"></i> 14</a><a class="note-dropdown-item" href="#" data-value="18" role="listitem" aria-label="18"><i class="note-icon-menu-check"></i> 18</a>
		   <a class="note-dropdown-item" href="#" data-value="24" role="listitem" aria-label="24">
		   	 	<i class="note-icon-menu-check"></i> 24</a>
		   <a class="note-dropdown-item" href="#" data-value="36" role="listitem" aria-label="36">
		   		<i class="note-icon-menu-check"></i> 36</a>
		   </div>
   	</div>
  </div>
  <div class="note-btn-group note-color">
  	<div class="note-btn-group note-color">
  		<button type="button" class="note-btn note-current-color-button" role="button" tabindex="-1" aria-label="Recent Color" data-backcolor="#FFFF00"><i class="note-icon-font note-recent-color" style="background-color: rgb(255, 255, 0);"></i></button><button type="button" class="note-btn dropdown-toggle" role="button" tabindex="-1" data-toggle="dropdown" aria-label="More Color"> 
  			<span class="note-icon-caret"></span>
  		</button>
  		<div class="note-dropdown-menu" role="list">
  			<div class="note-palette">  
  				<div class="note-palette-title">Background Color</div> 
  				 <div>    
  				 	<button type="button" class="note-color-reset btn btn-light" data-event="backColor" data-value="inherit">Transparent    </button> 
  				  </div>  
  				  <div class="note-holder" data-event="backColor">
  				  	<div class="note-color-palette">
  				  		<div class="note-color-row">
  				  			<button type="button" class="note-btn note-color-btn" style="background-color:#000" data-event="backColor" data-value="#000" title="Black" aria-label="Black" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#424242" data-event="backColor" data-value="#424242" title="Tundora" aria-label="Tundora" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#636363" data-event="backColor" data-value="#636363" title="Dove Gray" aria-label="Dove Gray" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#9c9c94" data-event="backColor" data-value="#9c9c94" title="Star Dust" aria-label="Star Dust" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#cec6ce" data-event="backColor" data-value="#cec6ce" title="Pale Slate" aria-label="Pale Slate" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#efefef" data-event="backColor" data-value="#efefef" title="Gallery" aria-label="Gallery" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#f7f7f7" data-event="backColor" data-value="#f7f7f7" title="Alabaster" aria-label="Alabaster" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#fff" data-event="backColor" data-value="#fff" title="White" aria-label="White" data-toggle="button" tabindex="-1"></button>
  				 		</div>
  				 		<div class="note-color-row">
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#f00" data-event="backColor" data-value="#f00" title="Red" aria-label="Red" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#ff9c00" data-event="backColor" data-value="#ff9c00" title="Orange Peel" aria-label="Orange Peel" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#ff0" data-event="backColor" data-value="#ff0" title="Yellow" aria-label="Yellow" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#0f0" data-event="backColor" data-value="#0f0" title="Green" aria-label="Green" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#0ff" data-event="backColor" data-value="#0ff" title="Cyan" aria-label="Cyan" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#00f" data-event="backColor" data-value="#00f" title="Blue" aria-label="Blue" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#9c00ff" data-event="backColor" data-value="#9c00ff" title="Electric Violet" aria-label="Electric Violet" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#f0f" data-event="backColor" data-value="#f0f" title="Magenta" aria-label="Magenta" data-toggle="button" tabindex="-1"></button>
  				 		</div>
  				 		<div class="note-color-row">
	  				 		<button type="button" class="note-btn note-color-btn" style="background-color:#f7c6ce" data-event="backColor" data-value="#f7c6ce" title="Azalea" aria-label="Azalea" data-toggle="button" tabindex="-1"></button>
	  				 		<button type="button" class="note-btn note-color-btn" style="background-color:#ffe7ce" data-event="backColor" data-value="#ffe7ce" title="Karry" aria-label="Karry" data-toggle="button" tabindex="-1"></button>
	  				 		<button type="button" class="note-btn note-color-btn" style="background-color:#ffefc6" data-event="backColor" data-value="#ffefc6" title="Egg White" aria-label="Egg White" data-toggle="button" tabindex="-1"></button>
	  				 		<button type="button" class="note-btn note-color-btn" style="background-color:#d6efd6" data-event="backColor" data-value="#d6efd6" title="Zanah" aria-label="Zanah" data-toggle="button" tabindex="-1"></button>
	  				 		<button type="button" class="note-btn note-color-btn" style="background-color:#cedee7" data-event="backColor" data-value="#cedee7" title="Botticelli" aria-label="Botticelli" data-toggle="button" tabindex="-1"></button>
	  				 		<button type="button" class="note-btn note-color-btn" style="background-color:#cee7f7" data-event="backColor" data-value="#cee7f7" title="Tropical Blue" aria-label="Tropical Blue" data-toggle="button" tabindex="-1"></button>
	  				 		<button type="button" class="note-btn note-color-btn" style="background-color:#d6d6e7" data-event="backColor" data-value="#d6d6e7" title="Mischka" aria-label="Mischka" data-toggle="button" tabindex="-1"></button>
	  				 		<button type="button" class="note-btn note-color-btn" style="background-color:#e7d6de" data-event="backColor" data-value="#e7d6de" title="Twilight" aria-label="Twilight" data-toggle="button" tabindex="-1"></button>
  				 		</div>
  				 		<div class="note-color-row">
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#e79c9c" data-event="backColor" data-value="#e79c9c" title="Tonys Pink" aria-label="Tonys Pink" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#ffc69c" data-event="backColor" data-value="#ffc69c" title="Peach Orange" aria-label="Peach Orange" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#ffe79c" data-event="backColor" data-value="#ffe79c" title="Cream Brulee" aria-label="Cream Brulee" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#b5d6a5" data-event="backColor" data-value="#b5d6a5" title="Sprout" aria-label="Sprout" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#a5c6ce" data-event="backColor" data-value="#a5c6ce" title="Casper" aria-label="Casper" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#9cc6ef" data-event="backColor" data-value="#9cc6ef" title="Perano" aria-label="Perano" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#b5a5d6" data-event="backColor" data-value="#b5a5d6" title="Cold Purple" aria-label="Cold Purple" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#d6a5bd" data-event="backColor" data-value="#d6a5bd" title="Careys Pink" aria-label="Careys Pink" data-toggle="button" tabindex="-1"></button>
  				 		</div>
  				 		<div class="note-color-row">
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#e76363" data-event="backColor" data-value="#e76363" title="Mandy" aria-label="Mandy" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#f7ad6b" data-event="backColor" data-value="#f7ad6b" title="Rajah" aria-label="Rajah" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#ffd663" data-event="backColor" data-value="#ffd663" title="Dandelion" aria-label="Dandelion" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#94bd7b" data-event="backColor" data-value="#94bd7b" title="Olivine" aria-label="Olivine" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#73a5ad" data-event="backColor" data-value="#73a5ad" title="Gulf Stream" aria-label="Gulf Stream" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#6badde" data-event="backColor" data-value="#6badde" title="Viking" aria-label="Viking" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#8c7bc6" data-event="backColor" data-value="#8c7bc6" title="Blue Marguerite" aria-label="Blue Marguerite" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#c67ba5" data-event="backColor" data-value="#c67ba5" title="Puce" aria-label="Puce" data-toggle="button" tabindex="-1"></button>
  				 		</div>
  				 		<div class="note-color-row">
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#ce0000" data-event="backColor" data-value="#ce0000" title="Guardsman Red" aria-label="Guardsman Red" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#e79439" data-event="backColor" data-value="#e79439" title="Fire Bush" aria-label="Fire Bush" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#efc631" data-event="backColor" data-value="#efc631" title="Golden Dream" aria-label="Golden Dream" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#6ba54a" data-event="backColor" data-value="#6ba54a" title="Chelsea Cucumber" aria-label="Chelsea Cucumber" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#4a7b8c" data-event="backColor" data-value="#4a7b8c" title="Smalt Blue" aria-label="Smalt Blue" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#3984c6" data-event="backColor" data-value="#3984c6" title="Boston Blue" aria-label="Boston Blue" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#634aa5" data-event="backColor" data-value="#634aa5" title="Butterfly Bush" aria-label="Butterfly Bush" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#a54a7b" data-event="backColor" data-value="#a54a7b" title="Cadillac" aria-label="Cadillac" data-toggle="button" tabindex="-1"></button>
  				 		</div>
  				 		<div class="note-color-row">
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#9c0000" data-event="backColor" data-value="#9c0000" title="Sangria" aria-label="Sangria" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#b56308" data-event="backColor" data-value="#b56308" title="Mai Tai" aria-label="Mai Tai" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#bd9400" data-event="backColor" data-value="#bd9400" title="Buddha Gold" aria-label="Buddha Gold" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#397b21" data-event="backColor" data-value="#397b21" title="Forest Green" aria-label="Forest Green" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#104a5a" data-event="backColor" data-value="#104a5a" title="Eden" aria-label="Eden" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#085294" data-event="backColor" data-value="#085294" title="Venice Blue" aria-label="Venice Blue" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#311873" data-event="backColor" data-value="#311873" title="Meteorite" aria-label="Meteorite" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#731842" data-event="backColor" data-value="#731842" title="Claret" aria-label="Claret" data-toggle="button" tabindex="-1"></button>
  				 		</div>
  				 		<div class="note-color-row">
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#630000" data-event="backColor" data-value="#630000" title="Rosewood" aria-label="Rosewood" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#7b3900" data-event="backColor" data-value="#7b3900" title="Cinnamon" aria-label="Cinnamon" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#846300" data-event="backColor" data-value="#846300" title="Olive" aria-label="Olive" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#295218" data-event="backColor" data-value="#295218" title="Parsley" aria-label="Parsley" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#083139" data-event="backColor" data-value="#083139" title="Tiber" aria-label="Tiber" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#003163" data-event="backColor" data-value="#003163" title="Midnight Blue" aria-label="Midnight Blue" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#21104a" data-event="backColor" data-value="#21104a" title="Valentino" aria-label="Valentino" data-toggle="button" tabindex="-1"></button>
  				 			<button type="button" class="note-btn note-color-btn" style="background-color:#4a1031" data-event="backColor" data-value="#4a1031" title="Loulou" aria-label="Loulou" data-toggle="button" tabindex="-1"></button>
  				 		</div>
  				 	</div>
  				 </div>
  				</div>
  				<div class="note-palette">  
  					<div class="note-palette-title">Foreground Color</div>  
  				<div>    
  					<button type="button" class="note-color-reset btn btn-light" data-event="removeFormat" data-value="foreColor">Reset to default</button></div>  
  						<div class="note-holder" data-event="foreColor">
  							<div class="note-color-palette">
  								<div class="note-color-row">
  									<button type="button" class="note-btn note-color-btn" style="background-color:#000" data-event="foreColor" data-value="#000" title="Black" aria-label="Black" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#424242" data-event="foreColor" data-value="#424242" title="Tundora" aria-label="Tundora" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#636363" data-event="foreColor" data-value="#636363" title="Dove Gray" aria-label="Dove Gray" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#9c9c94" data-event="foreColor" data-value="#9c9c94" title="Star Dust" aria-label="Star Dust" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#cec6ce" data-event="foreColor" data-value="#cec6ce" title="Pale Slate" aria-label="Pale Slate" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#efefef" data-event="foreColor" data-value="#efefef" title="Gallery" aria-label="Gallery" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#f7f7f7" data-event="foreColor" data-value="#f7f7f7" title="Alabaster" aria-label="Alabaster" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#fff" data-event="foreColor" data-value="#fff" title="White" aria-label="White" data-toggle="button" tabindex="-1"></button>
  								</div>
  								<div class="note-color-row">
  									<button type="button" class="note-btn note-color-btn" style="background-color:#f00" data-event="foreColor" data-value="#f00" title="Red" aria-label="Red" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#ff9c00" data-event="foreColor" data-value="#ff9c00" title="Orange Peel" aria-label="Orange Peel" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#ff0" data-event="foreColor" data-value="#ff0" title="Yellow" aria-label="Yellow" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#0f0" data-event="foreColor" data-value="#0f0" title="Green" aria-label="Green" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#0ff" data-event="foreColor" data-value="#0ff" title="Cyan" aria-label="Cyan" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#00f" data-event="foreColor" data-value="#00f" title="Blue" aria-label="Blue" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#9c00ff" data-event="foreColor" data-value="#9c00ff" title="Electric Violet" aria-label="Electric Violet" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#f0f" data-event="foreColor" data-value="#f0f" title="Magenta" aria-label="Magenta" data-toggle="button" tabindex="-1"></button>
  								</div>
  								<div class="note-color-row">
  									<button type="button" class="note-btn note-color-btn" style="background-color:#f7c6ce" data-event="foreColor" data-value="#f7c6ce" title="Azalea" aria-label="Azalea" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#ffe7ce" data-event="foreColor" data-value="#ffe7ce" title="Karry" aria-label="Karry" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#ffefc6" data-event="foreColor" data-value="#ffefc6" title="Egg White" aria-label="Egg White" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#d6efd6" data-event="foreColor" data-value="#d6efd6" title="Zanah" aria-label="Zanah" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#cedee7" data-event="foreColor" data-value="#cedee7" title="Botticelli" aria-label="Botticelli" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#cee7f7" data-event="foreColor" data-value="#cee7f7" title="Tropical Blue" aria-label="Tropical Blue" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#d6d6e7" data-event="foreColor" data-value="#d6d6e7" title="Mischka" aria-label="Mischka" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#e7d6de" data-event="foreColor" data-value="#e7d6de" title="Twilight" aria-label="Twilight" data-toggle="button" tabindex="-1"></button>
  								</div>
  								<div class="note-color-row">
  									<button type="button" class="note-btn note-color-btn" style="background-color:#e79c9c" data-event="foreColor" data-value="#e79c9c" title="Tonys Pink" aria-label="Tonys Pink" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#ffc69c" data-event="foreColor" data-value="#ffc69c" title="Peach Orange" aria-label="Peach Orange" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#ffe79c" data-event="foreColor" data-value="#ffe79c" title="Cream Brulee" aria-label="Cream Brulee" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#b5d6a5" data-event="foreColor" data-value="#b5d6a5" title="Sprout" aria-label="Sprout" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#a5c6ce" data-event="foreColor" data-value="#a5c6ce" title="Casper" aria-label="Casper" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#9cc6ef" data-event="foreColor" data-value="#9cc6ef" title="Perano" aria-label="Perano" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#b5a5d6" data-event="foreColor" data-value="#b5a5d6" title="Cold Purple" aria-label="Cold Purple" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#d6a5bd" data-event="foreColor" data-value="#d6a5bd" title="Careys Pink" aria-label="Careys Pink" data-toggle="button" tabindex="-1"></button>
  								</div>
  								<div class="note-color-row">
  									<button type="button" class="note-btn note-color-btn" style="background-color:#e76363" data-event="foreColor" data-value="#e76363" title="Mandy" aria-label="Mandy" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#f7ad6b" data-event="foreColor" data-value="#f7ad6b" title="Rajah" aria-label="Rajah" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#ffd663" data-event="foreColor" data-value="#ffd663" title="Dandelion" aria-label="Dandelion" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#94bd7b" data-event="foreColor" data-value="#94bd7b" title="Olivine" aria-label="Olivine" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#73a5ad" data-event="foreColor" data-value="#73a5ad" title="Gulf Stream" aria-label="Gulf Stream" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#6badde" data-event="foreColor" data-value="#6badde" title="Viking" aria-label="Viking" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#8c7bc6" data-event="foreColor" data-value="#8c7bc6" title="Blue Marguerite" aria-label="Blue Marguerite" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#c67ba5" data-event="foreColor" data-value="#c67ba5" title="Puce" aria-label="Puce" data-toggle="button" tabindex="-1"></button>
  								</div>
  								<div class="note-color-row">
  									<button type="button" class="note-btn note-color-btn" style="background-color:#ce0000" data-event="foreColor" data-value="#ce0000" title="Guardsman Red" aria-label="Guardsman Red" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#e79439" data-event="foreColor" data-value="#e79439" title="Fire Bush" aria-label="Fire Bush" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#efc631" data-event="foreColor" data-value="#efc631" title="Golden Dream" aria-label="Golden Dream" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#6ba54a" data-event="foreColor" data-value="#6ba54a" title="Chelsea Cucumber" aria-label="Chelsea Cucumber" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#4a7b8c" data-event="foreColor" data-value="#4a7b8c" title="Smalt Blue" aria-label="Smalt Blue" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#3984c6" data-event="foreColor" data-value="#3984c6" title="Boston Blue" aria-label="Boston Blue" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#634aa5" data-event="foreColor" data-value="#634aa5" title="Butterfly Bush" aria-label="Butterfly Bush" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#a54a7b" data-event="foreColor" data-value="#a54a7b" title="Cadillac" aria-label="Cadillac" data-toggle="button" tabindex="-1"></button>
  								</div>
  								<div class="note-color-row">
  									<button type="button" class="note-btn note-color-btn" style="background-color:#9c0000" data-event="foreColor" data-value="#9c0000" title="Sangria" aria-label="Sangria" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#b56308" data-event="foreColor" data-value="#b56308" title="Mai Tai" aria-label="Mai Tai" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#bd9400" data-event="foreColor" data-value="#bd9400" title="Buddha Gold" aria-label="Buddha Gold" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#397b21" data-event="foreColor" data-value="#397b21" title="Forest Green" aria-label="Forest Green" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#104a5a" data-event="foreColor" data-value="#104a5a" title="Eden" aria-label="Eden" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#085294" data-event="foreColor" data-value="#085294" title="Venice Blue" aria-label="Venice Blue" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#311873" data-event="foreColor" data-value="#311873" title="Meteorite" aria-label="Meteorite" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#731842" data-event="foreColor" data-value="#731842" title="Claret" aria-label="Claret" data-toggle="button" tabindex="-1"></button>
  								</div>
  								<div class="note-color-row">
  									<button type="button" class="note-btn note-color-btn" style="background-color:#630000" data-event="foreColor" data-value="#630000" title="Rosewood" aria-label="Rosewood" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#7b3900" data-event="foreColor" data-value="#7b3900" title="Cinnamon" aria-label="Cinnamon" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#846300" data-event="foreColor" data-value="#846300" title="Olive" aria-label="Olive" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#295218" data-event="foreColor" data-value="#295218" title="Parsley" aria-label="Parsley" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#083139" data-event="foreColor" data-value="#083139" title="Tiber" aria-label="Tiber" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#003163" data-event="foreColor" data-value="#003163" title="Midnight Blue" aria-label="Midnight Blue" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#21104a" data-event="foreColor" data-value="#21104a" title="Valentino" aria-label="Valentino" data-toggle="button" tabindex="-1"></button>
  									<button type="button" class="note-btn note-color-btn" style="background-color:#4a1031" data-event="foreColor" data-value="#4a1031" title="Loulou" aria-label="Loulou" data-toggle="button" tabindex="-1"></button>
  								</div>
  							</div>
  						</div>
  					</div>
  				</div>
  			</div>
  		</div>
  		<div class="note-btn-group note-para">
  			<button type="button" class="note-btn" role="button" tabindex="-1" aria-label="Unordered list (CTRL+SHIFT+NUM7)">
  				<i class="note-icon-unorderedlist"></i>
  			</button>
  			<button type="button" class="note-btn" role="button" tabindex="-1" aria-label="Ordered list (CTRL+SHIFT+NUM8)">
  				<i class="note-icon-orderedlist"></i>
  			</button>
  			<div class="note-btn-group">
  				<button type="button" class="note-btn dropdown-toggle" role="button" tabindex="-1" data-toggle="dropdown" aria-label="Paragraph">
  					<i class="note-icon-align-left"></i> 
  						<span class="note-icon-caret"></span>
  				</button>
  			<div class="note-dropdown-menu" role="list">
  				<div class="note-btn-group note-align">
  					<button type="button" class="note-btn" role="button" tabindex="-1" aria-label="Align left (CTRL+SHIFT+L)">
  						<i class="note-icon-align-left"></i>
  					</button>
  					<button type="button" class="note-btn" role="button" tabindex="-1" aria-label="Align center (CTRL+SHIFT+E)">
  						<i class="note-icon-align-center"></i>
  					</button>
  					<button type="button" class="note-btn" role="button" tabindex="-1" aria-label="Align right (CTRL+SHIFT+R)">
  						<i class="note-icon-align-right"></i>
  					</button>
  					<button type="button" class="note-btn" role="button" tabindex="-1" aria-label="Justify full (CTRL+SHIFT+J)">
  						<i class="note-icon-align-justify"></i>
  					</button>
  				</div>
  				<div class="note-btn-group note-list">
  					<button type="button" class="note-btn" role="button" tabindex="-1" aria-label="Outdent (CTRL+[)">
  						<i class="note-icon-align-outdent"></i>
  					</button>
  					<button type="button" class="note-btn" role="button" tabindex="-1" aria-label="Indent (CTRL+])">
  						<i class="note-icon-align-indent"></i>
  					</button>
  				</div>
  			</div>
  		</div>
  	</div>
  	<div class="note-btn-group note-table">
  		<div class="note-btn-group">
  			<button type="button" class="note-btn dropdown-toggle" role="button" tabindex="-1" data-toggle="dropdown" aria-label="Table">
  				<i class="note-icon-table"></i> 
  					<span class="note-icon-caret"></span>
  			</button>
  		<div class="note-dropdown-menu note-table" role="list" aria-label="Table">
  			<div class="note-dimension-picker">  
  				<div class="note-dimension-picker-mousecatcher" data-event="insertTable" data-value="1x1" style="width: 10em; height: 10em;">
  			</div>  
  			<div class="note-dimension-picker-highlighted"></div>  
  			<div class="note-dimension-picker-unhighlighted"></div>
  			</div>
  		<div class="note-dimension-display">1 x 1</div>
  		</div>
  	</div>
  </div>
  <div class="note-btn-group note-insert">
  	<button type="button" class="note-btn" role="button" tabindex="-1" aria-label="Link (CTRL+K)">
  		<i class="note-icon-link"></i>
  	</button>
  	<button type="button" class="note-btn" role="button" tabindex="-1" aria-label="Picture">
  		<i class="note-icon-picture"></i>
  	</button>
  	<button type="button" class="note-btn" role="button" tabindex="-1" aria-label="Video">
  		<i class="note-icon-video"></i>
  	</button>
  	</div>
  	<div class="note-btn-group note-view">
  		<button type="button" class="note-btn btn-fullscreen" role="button" tabindex="-1" aria-label="Full Screen">
  			<i class="note-icon-arrows-alt"></i>
  		</button>
  		<button type="button" class="note-btn btn-codeview" role="button" tabindex="-1" aria-label="Code View">
  			<i class="note-icon-code"></i>
  		</button>
  		<button type="button" class="note-btn" role="button" tabindex="-1" aria-label="Help">
  			<i class="note-icon-question"></i>
  		</button>
  		</div>
  	</div>
  	<div class="note-editing-area">
  		<div class="note-handle">
  			<div class="note-control-selection">
  				<div class="note-control-selection-bg"></div>
  			<div class="note-control-holder note-control-nw"></div>
  			<div class="note-control-holder note-control-ne"></div>
  			<div class="note-control-holder note-control-sw"></div>
  			<div class="note-control-sizing note-control-se"></div>
  			<div class="note-control-selection-info"></div>
  		</div>
  	</div>
  	<textarea class="note-codable" role="textbox" aria-multiline="true"></textarea>
  	<div class="note-editable" contenteditable="true" role="textbox" aria-multiline="true" style="height: 160px;">
  	<p><br></p>
  	</div>
  	</div>
  	<output class="note-status-output" role="status" aria-live="polite"></output>
  	<div class="note-statusbar" role="resize">  
  		<div class="note-resizebar" role="seperator" aria-orientation="horizontal" aria-label="resize">    
  			<div class="note-icon-bar"></div>    
  			<div class="note-icon-bar"></div>    
  			<div class="note-icon-bar"></div>  
  		</div>
  	</div>
  	<div class="note-modal link-dialog" aria-hidden="false" tabindex="-1" role="dialog" aria-label="Insert Link">  
  		<div class="note-modal-content">    
  			<div class="note-modal-header">      
  				<button type="button" class="close" aria-label="Close" aria-hidden="true">
  					<i class="note-icon-close"></i>
  				</button>      
  				<h4 class="note-modal-title">Insert Link</h4>    
  			</div>    
  			<div class="note-modal-body">
  				<div class="form-group note-form-group">
  					<label class="note-form-label">Text to display</label>
  						<input class="note-link-text form-control note-form-control  note-input" type="text">
  				</div>
  				<div class="form-group note-form-group">
  					<label class="note-form-label">To what URL should this link go?</label>
  						<input class="note-link-url form-control note-form-control note-input" type="text" value="http://">
  				</div>
  				<div class="checkbox"> 
  					<label for="sn-checkbox-open-in-new-window"> 
  						<input role="checkbox" type="checkbox" id="sn-checkbox-open-in-new-window" checked="" aria-checked="true">Open in new window</label>
  				</div>
  			</div>    
  			<div class="note-modal-footer">
  				<button type="submit" href="#" class="btn btn-primary note-btn note-btn-primary note-link-btn" disabled="">Insert Link</button>
  			</div>  
  		</div>
  	</div>
  	<div class="note-modal" aria-hidden="false" tabindex="-1" role="dialog" aria-label="Insert Image">  
  		<div class="note-modal-content">    
  			<div class="note-modal-header">      
  				<button type="button" class="close" aria-label="Close" aria-hidden="true">	
  					<i class="note-icon-close"></i>
  				</button>      
  					<h4 class="note-modal-title">Insert Image</h4>    
  			</div>    
  			<div class="note-modal-body">
  				<div class="form-group note-form-group note-group-select-from-files">
  					<label class="note-form-label">Select from files</label>
  						<input class="note-image-input note-form-control note-input" type="file" name="files" accept="image/*" multiple="multiple">
  				</div>
  				<div class="form-group note-group-image-url" style="overflow:auto;">
  					<label class="note-form-label">Image URL</label>
  						<input class="note-image-url form-control note-form-control note-input  col-md-12" type="text">
  				</div>
  			</div>    
  			<div class="note-modal-footer">
  				<button type="submit" href="#" class="btn btn-primary note-btn note-btn-primary note-image-btn" disabled="">Insert Image</button>
  			</div>  
  		</div>
  	</div>
  	<div class="note-modal" aria-hidden="false" tabindex="-1" role="dialog" aria-label="Insert Video">  
  		<div class="note-modal-content">    
  			<div class="note-modal-header">      
  				<button type="button" class="close" aria-label="Close" aria-hidden="true">
  					<i class="note-icon-close"></i>
  				</button>      
  				<h4 class="note-modal-title">Insert Video</h4>    
  			</div>    
  			<div class="note-modal-body">
  				<div class="form-group note-form-group row-fluid">
  					<label class="note-form-label">Video URL <small class="text-muted">(YouTube, Vimeo, Vine, Instagram, DailyMotion or Youku)</small></label>
  						<input class="note-video-url form-control note-form-control note-input" type="text">
  				</div>
  			</div>    
  			<div class="note-modal-footer">
  				<button type="submit" href="#" class="btn btn-primary note-btn note-btn-primary note-video-btn" disabled="">Insert Video</button>
  			</div>  
  		</div>
  	</div>
  	<div class="note-modal" aria-hidden="false" tabindex="-1" role="dialog" aria-label="Help">  
  		<div class="note-modal-content">    
  			<div class="note-modal-header">      
  				<button type="button" class="close" aria-label="Close" aria-hidden="true">
  					<i class="note-icon-close"></i>
  				</button>      
  					<h4 class="note-modal-title">Help</h4>    
  			</div>    
  			<div class="note-modal-body" style="max-height: 300px; overflow: scroll;">
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>ENTER</kbd></label>
  					<span>Insert Paragraph</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+Z</kbd></label>
  					<span>Undoes the last command</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+Y</kbd></label>
  				<span>Redoes the last command</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>TAB</kbd></label>
  				<span>Tab</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>SHIFT+TAB</kbd></label>
  				<span>Untab</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+B</kbd></label>
  				<span>Set a bold style</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+I</kbd></label>
  				<span>Set a italic style</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+U</kbd></label>
  				<span>Set a underline style</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+S</kbd></label>
  				<span>Set a strikethrough style</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+BACKSLASH</kbd></label>
  				<span>Clean a style</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+L</kbd></label>
  				<span>Set left align</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+E</kbd></label>
  				<span>Set center align</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+R</kbd></label>
  				<span>Set right align</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+J</kbd></label>
  				<span>Set full align</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+NUM7</kbd></label>
  				<span>Toggle unordered list</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+NUM8</kbd></label>
  				<span>Toggle ordered list</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+LEFTBRACKET</kbd></label>
  				<span>Outdent on current paragraph</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+RIGHTBRACKET</kbd></label>
  				<span>Indent on current paragraph</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM0</kbd></label>
  				<span>Change current block's format as a paragraph(P tag)</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM1</kbd></label>
  				<span>Change current block's format as H1</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM2</kbd></label>
  				<span>Change current block's format as H2</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM3</kbd></label>
  				<span>Change current block's format as H3</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM4</kbd></label>
  				<span>Change current block's format as H4</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM5</kbd></label>
  				<span>Change current block's format as H5</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM6</kbd></label>
  				<span>Change current block's format as H6</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+ENTER</kbd></label>
  				<span>Insert horizontal rule</span>
  			<div class="help-list-item"></div>
  				<label style="width: 180px; margin-right: 10px;"><kbd>CTRL+K</kbd></label>
  				<span>Show Link Dialog</span>
  		</div>    
  		<div class="note-modal-footer">
  			<p class="text-center">
  				<a href="http://summernote.org/" target="_blank">Summernote 0.8.10</a> · 
  				<a href="https://github.com/summernote/summernote" target="_blank">Project</a> · 
  				<a href="https://github.com/summernote/summernote/issues" target="_blank">Issues</a>
  			</p>
  		</div>  
  	</div>
  </div>
 </div>
</div>