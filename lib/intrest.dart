


class Interest{
  String name;

  Interest({required this.name});

  static List<Interest> getInterest() {
    List<Interest> _interest=[];


    _interest.add(
      Interest(name: 'Sports')
    );

    _interest.add(
        Interest(name: 'Entertainment')
    );

    _interest.add(
        Interest(name: 'Media')
    );

    _interest.add(
        Interest(name: 'Politics')
    );

    _interest.add(
        Interest(name: 'Technology')
    );


    return _interest;
  }

}