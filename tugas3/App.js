import React, {Component} from 'react';
import {Platforms, StyleSheet, Text, View, Image, TextInput, ScrollView, TouchableOpacity} from 'react-native';
import iconHome from './icon/home-active.png'
import iconOrder from './icon/order.png'
import iconHelp from './icon/help.png'
import iconInbox from './icon/inbox.png'
import iconAccount from './icon/account.png'
import iconSearch from './icon/search.png'
import iconPromo from './icon/promo.png'
import iconGopay from './icon/gopay.png'
import iconPay from './icon/pay.png'
import iconNearby from './icon/nearby.png'
import iconTopup from './icon/topup.png'
import iconMore from './icon/more.png'
import iconGobluebird from './icon/go-bluebird.png'
import iconGocar from './icon/go-car.png'
import iconGodeals from './icon/go-deals.png'
import iconGofood from './icon/go-food.png'
import iconGomore from './icon/go-more.png'
import iconGopulsa from './icon/go-pulsa.png'
import iconGoride from './icon/go-ride.png'
import iconGosend from './icon/go-send.png'

export default class App extends Component {
  render(){
    return (
      <View style={{flex : 1}}>
        <ScrollView>
        <View style={{flex: 1, backgroundColor: 'white'}}>
          {/*Search Bar*/}
            <View style={{marginHorizontal: 17, flexDirection: 'row', paddingTop: 15}}>
              <View style={{position:'relative', flex:1}}>
                <TextInput placeholder="What do you want to eat?" style= {{borderWidth: 1, borderColor: '#E8E8E8', borderRadius: 25, height: 40, fontSize: 13, paddingLeft: 45, paddingRight: 20, backgroundColor: 'white', marginRight: 18}}/>
                <Image source={iconSearch} style={{position:'absolute', top: 5, left: 12}}/>
              </View>
              <View style={{width: 35, alignItems: 'center', justifyContent: 'center'}}>
                <Image source={iconPromo}/>
              </View>
            </View>
            {/*Gopay*/}
            <View style={{marginHorizontal: 17, marginTop: 8}}>
              <View style={{flexDirection: 'row', justifyContent: 'space-between', backgroundColor:'#2C5FB8', borderTopLeftRadius: 4, borderTopRightRadius: 4, padding: 14}}>
                <Image source={iconGopay}/>
                <Text style={{fontSize: 17, fontWeight: 'bold', color: 'white'}}>Rp 50.000</Text>
              </View>
              <View style={{flexDirection: 'row', paddingTop:20, paddingBottom: 14, backgroundColor:'#2F65BD', borderBottomLeftRadius: 4, borderBottomRightRadius:4 }}>
                <View style={{flex: 1, alignItems: 'center'}}>
                  <Image source={iconPay}/>
                  <Text style={{fontSize: 13, color: 'white', marginTop: 15}}>Pay</Text>
                </View>
                <View style={{flex: 1, alignItems: 'center'}}>
                  <Image source={iconNearby}/>
                  <Text style={{fontSize: 13, color: 'white', marginTop: 15}}>Nearby</Text>
                </View>
                <View style={{ flex: 1, alignItems: 'center'}}>
                  <Image source={iconTopup}/>
                  <Text style={{fontSize: 13, color: 'white', marginTop: 15}}>TopUp</Text>
                </View>
                <View style={{flex: 1, alignItems: 'center'}}>
                  <Image source={iconMore}/>
                  <Text style={{fontSize: 13, color: 'white', marginTop: 15}}>More</Text>
                </View>
              </View>
            </View>
            {/*main feature*/}
           <View style={{flexDirection: 'row', flexWrap:'wrap',marginTop: 18}}>
            <View>
              <View style= {{justifyContent:'space-between',flexDirection: 'row',marginHorizontal:17, width: '87%', marginBottom: 18}}>
              <View style={{width: 58, height: 58, borderWidth:1,borderColor:'#EFEFEF', borderRadius:18, alignItems:'center'}}>
                <Image style={{marginHorizontal: 2}} source={iconGoride}/> 
                <View style= {{width:'100%', alignItems:'center'}}>
                <Text style={{fontSize: 11, fontWeight: 'bold', textAlign: 'center', marginTop: 14,color:'black'}}>GO-RIDE</Text>
              </View>
            </View>
            <View style={{width: 58, height: 58, borderWidth:1,borderColor:'#EFEFEF', borderRadius:18, alignItems:'center'}}>
              <Image style={{marginHorizontal: 2}} source={iconGocar}/> 
                <View style= {{width:'100%', alignItems:'center'}}>
                <Text style={{fontSize: 11, fontWeight: 'bold', textAlign: 'center', marginTop: 14,color:'black'}}>GO-CAR</Text>
              </View>
            </View>
            <View style={{width: 58, height: 58, borderWidth:1,borderColor:'#EFEFEF', borderRadius:18, alignItems:'center'}}>
              <Image style={{marginHorizontal: 2}} source={iconGobluebird}/> 
              <View style= {{width:'100%', alignItems:'center'}}>
                <Text style={{fontSize: 11, fontWeight: 'bold', textAlign: 'center', marginTop: 14,color:'black'}}>GO-BLUEBIRD</Text>
              </View>
            </View>
            <View style={{width: 58, height: 58, borderWidth:1,borderColor:'#EFEFEF', borderRadius:18, alignItems:'center'}}>
              <Image style={{marginHorizontal: 2}} source={iconGosend}/> 
              <View style= {{width:'100%', alignItems:'center'}}>
                <Text style={{fontSize: 11, fontWeight: 'bold', textAlign: 'center', marginTop: 14,color:'black'}}>GO-SEND</Text>
              </View>
            </View>
            </View>
            <View style= {{justifyContent:'space-between',flexDirection: 'row',marginHorizontal:17, width: '87%'}}>
            <View style={{width: 58, height: 58, borderWidth:1,borderColor:'#EFEFEF', borderRadius:18, alignItems:'center'}}>
              <Image style={{marginHorizontal: 2}} source={iconGodeals}/> 
              <View style= {{width:'100%', alignItems:'center'}}>
                <Text style={{fontSize: 11, fontWeight: 'bold', textAlign: 'center', marginTop: 14,color:'black'}}>GO-DEALS</Text>
              </View>
            </View>
            <View style={{width: 58, height: 58, borderWidth:1,borderColor:'#EFEFEF', borderRadius:18, alignItems:'center'}}>
              <Image style={{marginHorizontal: 2}} source={iconGopulsa}/> 
              <View style= {{width:'100%', alignItems:'center'}}>
                <Text style={{fontSize: 11, fontWeight: 'bold', textAlign: 'center', marginTop: 14,color:'black'}}>GO-PULSA</Text>
              </View>
            </View>
            <View style={{width: 58, height: 58, borderWidth:1,borderColor:'#EFEFEF', borderRadius:18, alignItems:'center'}}>
              <Image style={{marginHorizontal: 2}} source={iconGofood}/> 
              <View style= {{width:'100%', alignItems:'center'}}>
                <Text style={{fontSize: 11, fontWeight: 'bold', textAlign: 'center', marginTop: 14,color:'black'}}>GO-FOOD</Text>
              </View>
            </View>
            <View style={{width: 58, height: 58, borderWidth:1,borderColor:'#EFEFEF', borderRadius:18, alignItems:'center'}}>
              <Image style={{marginHorizontal: 2}} source={iconGomore}/> 
              <View style= {{width:'100%', alignItems:'center'}}>
                <Text style={{fontSize: 11, fontWeight: 'bold', textAlign: 'center', marginTop: 14,color:'black'}}>MORE</Text>
              </View>
            </View>
            </View>
          </View>
        </View>
        <View style={{height:17,backgroundColor:'#F2F2F4', marginTop:20}}></View>
        {/* news section */}
        <View style={{paddingTop: 16, paddingHorizontal: 16}}>
          <View style={{position: 'relative'}}>
            <Image source={require('./dummy/sepak-bola.jpg')} style={{height: 170, width: '100%', borderRadius:7}}/>
            <View style={{width: '100%', height: '100%', position: 'absolute', top:0, left:0, backgroundColor: 'black', opacity: 0.1, borderRadius: 6}}></View>
            <View style={{height: 15, width: 55, position: 'absolute', top:16, left:16}}>
            <Image source={require('./logo/white.png')} style={{width: undefined, height: undefined, resizeMode: 'contain', flex:1}} />
            </View>
          </View>
          <View style={{paddingTop: 16, paddingBottom: 20, borderBottomColor: '#E8E9ED', borderBottomWidth: 1}}>
              <Text style={{color: '#1C1C1C', fontSize: 16, fontWeight: 'bold'}}>GO-NEWS</Text>
              <Text style={{color: '#7A7A7A', fontSize: 14, fontWeight: 'normal', marginBottom: 11}}>Dimas Drajat selamatkan penalti, Timnas U-23 kalahkan BRUNEI</Text>
              <TouchableOpacity style={{backgroundColor: '#61A756', paddingHorizontal: 12, paddingVertical: 11, alignSelf: 'flex-end', borderRadius: 4}}>
                <Text style={{fontSize: 13, fontWeight: 'bold', color: 'white', textAlign: 'center'}}>READ</Text>
              </TouchableOpacity>
          </View>
        </View>
        </View>
        {/* internal information section */}
        <View style={{backgroundColor: 'white', padding: 16, paddingBottom: 0}}>
            <View style={{height: 15, width: 60, marginLeft: -4}}>
            <Image source={require('./logo/gojek.png')} style={{width: undefined, height: undefined, resizeMode: 'contain', flex:1}} />
            </View>
            <Text style={{fontSize: 17, fontWeight: 'bold', color:'#1C1C1C', marginTop: 15, marginBottom: 20}}>Complate your profile</Text>
            <View style={{flexDirection: 'row', marginBottom: 16}}>
              <View>
                <Image source={require('./dummy/facebook-connect.png')}/>
              </View>
              <View style={{marginLeft: 16}}>
                <Text style={{color: '#4A4A4A', fontSize: 15, fontWeight: 'bold'}}>Connect with Facebook</Text>
                <Text style={{fontSize: 15, fontWeight:'normal',color: '#4A4A4A', width: '70%'}}>Login faster without verification code</Text>
              </View>
            </View>
            <View>
              <TouchableOpacity style={{backgroundColor: '#61A756', paddingHorizontal: 12, paddingVertical: 11, alignSelf: 'flex-end', borderRadius: 4}}>
                <Text style={{fontSize: 13, fontWeight: 'bold', color: 'white', textAlign: 'center'}}>CONNECT</Text>
              </TouchableOpacity>
           </View>
           <View style={{borderBottomColor: '#E8E9ED', borderBottomWidth: 1, marginTop: 16, marginBottom: 20}}></View>
        </View>
        {/* gofood banner section */}
        <View style={{padding: 16, backgroundColor: 'white'}}>
          <View style={{position: 'relative'}}>
            <Image source={require('./dummy/food-banner.jpg')} style={{height: 170, width: '100%', borderRadius:7}}/>
            <View style={{width: '100%', height: '100%', position: 'absolute', top:0, left:0, backgroundColor: 'black', opacity: 0.1, borderRadius: 6}}></View>
            <View style={{height: 15, width: 55, position: 'absolute', top:16, left:16}}>
            <Image source={require('./logo/white.png')} style={{width: undefined, height: undefined, resizeMode: 'contain', flex:1}} />
            </View>
            <View style={{position: 'absolute', bottom: 0, left: 0, width: '100%',  flexDirection: 'row', alignItems:'center', paddingHorizontal: 16, paddingBottom: 16}}>
              <View>
                <Text style={{fontSize: 18, fontWeight: 'bold', color: 'white', marginBottom: 8}}>Free GO-FOOD Voucher</Text>
                <Text style={{fontSize: 12, fontWeight: '500', color: 'white'}}>Quick, before they tun out!</Text>
              </View>
              <View style={{flex: 1, paddingLeft: 12}}>
              <TouchableOpacity style={{backgroundColor: '#61A756', paddingHorizontal: 12, paddingVertical: 11, alignSelf: 'stretch', borderRadius: 4}}>
                <Text style={{fontSize: 10, fontWeight: 'bold', color: 'white', textAlign: 'center'}}>GET VOUCHER</Text>
              </TouchableOpacity>
              </View>
            </View>
          </View>
          <View style={{borderBottomColor: '#E8E9ED', borderBottomWidth: 1, marginTop: 16, marginBottom: 20}}></View>
        </View>
        {/* nearby gofood */}
        <View style={{backgroundColor: 'white'}}>
          <View style={{height: 15, width: 60, marginLeft: 16}}>
            <Image source={require('./logo/go-food.png')} style={{width: undefined, height: undefined, resizeMode: 'contain', flex:1}} />
          </View>
          <View style={{flexDirection: 'row', justifyContent: 'space-between', marginBottom: 16, paddingHorizontal: 16}}>
            <Text style={{color: '#1C1C1C',fontSize: 17, fontWeight: 'bold'}}>Nearby Restoran</Text>
            <Text style={{color: '#61A756', fontSize: 17, fontWeight: 'bold'}}>See All</Text>
          </View>
          <ScrollView horizontal style={{flexDirection: 'row', paddingLeft: 16}}>
              <View style={{marginRight: 17}}>
                <View style={{width: 150, height: 150, borderRadius: 10}}>
                  <Image source={require('./dummy/go-food-kfc.jpg')} style={{width: undefined, height: undefined, resizeMode: 'cover', flex:1, borderRadius: 4}} />
                </View>
                <Text style={{color: '#1C1C1C', fontSize: 16, fontWeight: 'bold', marginTop: 12}}>KFC Buahbatu</Text>
              </View>
              <View style={{marginRight: 17}}>
                <View style={{width: 150, height: 150, borderRadius: 10}}>
                  <Image source={require('./dummy/go-food-gm.jpg')} style={{width: undefined, height: undefined, resizeMode: 'cover', flex:1, borderRadius: 4}} />
                </View>
                <Text style={{color: '#1C1C1C', fontSize: 16, fontWeight: 'bold', marginTop: 12}}>Bakmi GM Telkom</Text>
              </View>
              <View style={{marginRight: 17}}>
                <View style={{width: 150, height: 150, borderRadius: 10}}>
                  <Image source={require('./dummy/go-food-orins.jpg')} style={{width: undefined, height: undefined, resizeMode: 'cover', flex:1, borderRadius: 4}} />
                </View>
                <Text style={{color: '#1C1C1C', fontSize: 16, fontWeight: 'bold', marginTop: 12}}>Martabak Orins</Text>
              </View>
              <View style={{marginRight: 17}}>
                <View style={{width: 150, height: 150, borderRadius: 10}}>
                  <Image source={require('./dummy/go-food-banka.jpg')} style={{width: undefined, height: undefined, resizeMode: 'cover', flex:1, borderRadius: 4}} />
                </View>
                <Text style={{color: '#1C1C1C', fontSize: 16, fontWeight: 'bold', marginTop: 12}}>Martabak Bangka</Text>
              </View>
              <View style={{marginRight: 17}}>
                <View style={{width: 150, height: 150, borderRadius: 10}}>
                  <Image source={require('./dummy/go-food-pak-boss.jpg')} style={{width: undefined, height: undefined, resizeMode: 'cover', flex:1, borderRadius: 4}} />
                </View>
                <Text style={{color: '#1C1C1C', fontSize: 16, fontWeight: 'bold', marginTop: 12}}>Ayam Bakar Pak Boss</Text>
              </View>
          </ScrollView>
          <View style={{borderBottomColor: '#E8E9ED', borderBottomWidth: 1, marginTop: 16,marginHorizontal:16, marginBottom: 20}}></View>
          </View>
        </ScrollView>
        {/* gopay banner section */}
          <View style={{height: 54, backgroundColor: 'white', flexDirection: 'row', backgroundColor: 'white'}}>
          <View style= {{flex: 1, alignItems: 'center', justifyContent: 'center'}}>
            <Image style= {{width: 26, height:26}} source= {iconHome}/>
            <Text style={{fontSize: 10, color: '#545454', marginTop:4, color: '#43AB4A'}}>Home</Text>
          </View>
          <View style= {{flex: 1, alignItems: 'center', justifyContent: 'center'}}>
            <Image style= {{width: 26, height:26}} source= {iconOrder}/>
            <Text style={{fontSize: 10, color: '#545454', marginTop:4}}>Orders</Text>
          </View>
            <View style= {{flex: 1, alignItems: 'center', justifyContent: 'center'}}>
            <Image style= {{width: 26, height:26}} source= {iconHelp}/>
            <Text style={{fontSize: 10, color: '#545454', marginTop:4}}>Help</Text>
          </View>
          <View style= {{flex: 1, alignItems: 'center', justifyContent: 'center'}}>
            <Image style= {{width: 26, height:26}} source= {iconInbox}/>
            <Text style={{fontSize: 10, color: '#545454', marginTop:4}}>Inbox</Text>
          </View>
          <View style= {{flex: 1, alignItems: 'center', justifyContent: 'center'}}>
            <Image style= {{width: 26, height:26}} source= {iconAccount}/>
            <Text style={{fontSize: 10, color: '#545454', marginTop:4}}>Account</Text>
          </View>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  
});