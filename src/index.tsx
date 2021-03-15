import { requireNativeComponent, ViewStyle } from 'react-native';

type FloatballProps = {
  color: string;
  style: ViewStyle;
};

export const FloatballViewManager = requireNativeComponent<FloatballProps>(
  'FloatballView'
);

export default FloatballViewManager;
