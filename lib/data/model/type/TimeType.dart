enum TimeType{
  year('year','년'),
  month('month','월'),
  day('day','일'),
  hour('hour','시'),
  min('minute','분'),
  sec('second','초'),
  unKnown("unknown",'알수없음');

  const TimeType(this.code,this.name);

  final String code;
  final String name;

  factory TimeType.getByCode(String code){
    return TimeType.values.firstWhere((value) => value.code == code, orElse: ()=> TimeType.unKnown);
  }

}