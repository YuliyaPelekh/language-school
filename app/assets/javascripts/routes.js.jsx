var DefaultRoute = ReactRouter.DefaultRoute,
  Route = ReactRouter.Route,
  Link = ReactRouter.Link;

var Router = (
  <Route handler={App}>

   <DefaultRoute handler={FrontPage} />
  /*albums and pictures*/
    <Route name='albums' handler={Albums} path='/albums' />
    <Route name='albumNew' handler={AlbumNew} path='/albums/new' /> 
    <Route name='album' handler={Album} path='/albums/:albumId' />
    <Route name='albumEdit' handler={AlbumEdit} path='/albums/:albumId/edit' />
    <Route name='pictures' handler={Pictures} path='/albums/:albumId/pictures' />
    <Route name='pictureNew' handler={PictureNew} path='/albums/:albumId/pictures/new' />
    <Route name='pictureEdit' handler={PictureEdit} path='/albums/:albumId/pictures/:pictureId/edit' />

   <Route path='/menus' name='menus' handler={Menus} />
   <Route path='/menus/new' name='new_menu' handler={NewMenu} />
   <Route path='/menus/:menuId' name='menu_item' handler={Menu} />
   <Route path='/menus/:menuId/edit' name='edit' handler={EditMenu} />

   <Route path='/articles' name='articles' handler={Articles} />
   <Route path='/articles/new' name='new_article' handler={NewArticle} />
   <Route path='/articles/:articleId' name='article' handler={Article} />
   <Route path='/articles/:articleId/edit' name='edit_article' handler={EditArticle} />
   
   <Route path='/pages' name='pages' handler={Pages} />
   <Route path='/pages/new' name='new_page' handler={NewPage} />
   <Route path='/pages/:pageId' name='page' handler={Page} />
   <Route path='/pages/:pageId/edit' name='edit_page' handler={EditPage} />
  
    <Route name='events' handler={Events} path='/events' />
    <Route name='eventNew' handler={EventNew} path="/events/new" />
    <Route name='event' handler={Event} path="/events/:eventId" />
    <Route name='eventEdit' handler={EventEdit} path="/events/:eventId/edit" />
  </Route>
 );
