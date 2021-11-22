import React from 'react';
import {StyleSheet, Text, TouchableOpacity, View} from 'react-native';

const ButtonComponent = props => {
  return (
    <TouchableOpacity
      style={props.style.container}
      onPress={props.onPress || null}>
      <Text style={props.style.text}>{props.title}</Text>
    </TouchableOpacity>
  );
};

export default ButtonComponent;

const styles = StyleSheet.create({});
