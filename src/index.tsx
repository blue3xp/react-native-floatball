import { requireNativeComponent, ViewStyle } from 'react-native';

type FloatballProps = {
  url: string;
  isShow:boolean;
  style: ViewStyle;
};

export const FloatballViewManager = requireNativeComponent<FloatballProps>(
  'FloatballView'
);

export default FloatballViewManager;
