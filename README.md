# react-native-floatball

react-native-floatball

## Installation

```sh
npm install react-native-floatball
```

## Usage

```js
import Floatball from "react-native-floatball";


<View style={styles.container}>
      <FloatballViewManager url={url} style={styles.box} isShow={isShow}/>
      <Button onPress={() => {
          setShow(!isShow);
          console.log(isShow)
        }} title={'click'}/>
        </View>
 ```

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
