import React, {useState} from 'react';
import {StyleSheet, TextInput, View} from 'react-native';

const TextFieldComponent = props => {
  const [value, setValue] = useState();
  return (
    <View style={styles.container}>
      <TextInput
        placeholder={props.placeholder || ''}
        keyboardType={props.type}
        onChangeText={() => {
          setValue;
        }}
        value={value}
      />
    </View>
  );
};

export default TextFieldComponent;

const styles = StyleSheet.create({
  container: {
    width: '100%',
    backgroundColor: '#FFF',
    borderWidth: 1,
    borderColor: '#C3C3C3',
    borderRadius: 4,
    paddingHorizontal: 5,
  },
});
