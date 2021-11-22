import React from 'react';
import {StyleSheet, Text, View} from 'react-native';

const ButtonIcon = props => {
  return <View style={styles.container}>{props.icon}</View>;
};

export default ButtonIcon;

const styles = StyleSheet.create({
  container: {
    width: 48,
    height: 48,
    backgroundColor: '#FFF',
    borderRadius: 4,
    justifyContent: 'center',
    alignItems: 'center',
  },
});
