const { environment } = require('@rails/webpacker')
const webpack = require("webpack")

environment.plugins.append("Provide", new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default'] 
}));

// const aliasConfig = {
//     // 'jquery': 'jquery/src/jquery',
//     // 'jquery-ui': 'jquery-ui-dist/jquery-ui.js',
//     // 'fotorama': 'fotorama/fotorama.js'
//     'swiper': 'swiper/swiper-bundle.js'
// };
  
// environment.config.set('resolve.alias', aliasConfig);

module.exports = environment
