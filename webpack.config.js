const path = require("path");
const HtmlWebpackPlugin = require("html-webpack-plugin");

const isDevelopment = true;

module.exports = {
  mode: isDevelopment ? "development" : "production",
  entry: "./app/ui",
  plugins: [
    new HtmlWebpackPlugin({
      title: "Challenges",
    })
  ],
  output: {
    path: path.resolve(__dirname, "app/ui/dist"),
    filename: "[name].bundle.js",
    clean: true,
  },
  module: {
    rules: [
      {
        test: /\.m?js$/,
        exclude: /.yarn/,
        use: {
          loader: "babel-loader",
          options: {
            presets: ["@babel/preset-env"]
          }
        }
      },
      {
        test: /\.css$/i,
        use: ['style-loader', 'css-loader'],
      },
      {
        test: /\.module\.s(a|c)ss$/,
        use: [
          "style-loader",
          {
            loader: "css-loader",
            options: {
              modules: true,
              sourceMap: isDevelopment,
            }
          },
          {
            loader: "sass-loader",
            options: {
              sourceMap: isDevelopment,
            }
          }
        ]
      },
      {
        test: /\.s(a|c)ss$/,
        exclude: /\.module.(s(a|c)ss)$/,
        use: [
          "style-loader",
          "css-loader",
          {
            loader: "sass-loader",
            options: {
              sourceMap: isDevelopment
            }
          }
        ]
      },
      {
        test: /\.(woff|woff2|eot|ttf|otf)$/i,
        type: 'asset/resource',
      },
    ]
  },
  resolve: {
    extensions: [".js", ".jsx", ".scss", ".sass"]
  }
}