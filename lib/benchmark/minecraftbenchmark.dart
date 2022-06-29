import 'package:flutter/material.dart';

class Minecraftbenchmark extends StatefulWidget {
  const Minecraftbenchmark({Key? key}) : super(key: key);

  @override
  State<Minecraftbenchmark> createState() => _Minecraftbenchmark();
}

class _Minecraftbenchmark extends State<Minecraftbenchmark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),

      //Üstteki AppBar kısmı

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF004141),
        title: const Text("Aurora Benchmark"),
      ),

      //Body Kısmı

      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Colors.red.withOpacity(0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Nvidia()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Column(
                      children: [
                        Image.asset("images/nvidia.jpg",
                            fit: BoxFit.cover, width: 173, height: 180),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Colors.red.withOpacity(0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Amd()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Column(
                      children: [
                        Image.asset("images/amd.jpg",
                            fit: BoxFit.cover, width: 173, height: 180),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              decoration: BoxDecoration(
                color: const Color(0xFF062C30),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.black, spreadRadius: 1),
                ],
              ),
              width: 380,
              height: 50,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "Ekran kartı markasını seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 24,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              child: const Text(
                "Minecraft",
                style: TextStyle(
                  fontFamily: 'Witcher',
                  fontSize: 30,
                  color: Color(0xFFddffff),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              child: Image.network(
                'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgVFhYZGBgYGRgYGBoaHBwcGhgYGBoaGhgYGBgcIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QGhISHzQrJCw0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAM0A9gMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAACAwEEAAUGB//EAD4QAAIBAgMFBQUGBAYDAQAAAAECAAMRBCFBBRIxUWETcYGRoQYisdHwFDJCUsHhU2KS0hUWQ4Ki8SNysgf/xAAZAQADAQEBAAAAAAAAAAAAAAAAAQIDBAX/xAAlEQACAgICAgICAwEAAAAAAAAAAQIRAyESMSJRE0EEgWFxoTL/2gAMAwEAAhEDEQA/ANOVElKmUBaDnIZDrJfC7uZM4NHoD0UcbZxVSob5RQ3jkDlGrh7ZkwHZKIzcT9d0d2I1Mrb50OUwvCmBa7VE4Dy+ZiXxJbgP1lYsb9JeoGKqDsUo5xrV+QkNYzDSNoaASalznCBglJNowRm6dI1MKx5CLXEbukxsW54Zdw+cVMNFrc3esT2jE9JX95jmb95lpEh0F2OSrbrIapcxDk8BJXCseUKQDC6jlI7QGSMINTBYARaALshrC3ANLQErAdZLVr6QdlCqjQVcjhDZYIpE8BGSYah5mHSe0JcKdSJgpARNoByYm3AQWxLngfKACo5Rq4pRrfuh+iiuaLnMg+P7wlwx5iPbF34DzgK5MVsAhQEyZc9ZkVga2piTofKClLe4mLWiTpLCqVGc1I/swLaJqiMRyeMN2B4RAVkMcqXmbgGsgoTw4RhQ5aSD7x8zAqVV4CJ7C2shLaxUFj6YtCaqeeUDthwENKaniYDI+0DQSd+8YWReXxiXrA8IICwiDSLrGClQ8BMYnWL7ATvmTcnWMCX1juwUDMmOxUJR7R4rtpEMyjgRCTEgc4mhol6btzt1Nh5TEw51IhDFnQCErMYbDRKUBzMlt0cpm4YJpdYgBNQTBiCOAgsgEkgR0BLYljw9BFCm7aHx/eNWoBDGJtwEOug7IpYFtSB6x6YAak+EWcW1tItqjnn4ftE+Q9F5cMg08zMYqOFpTQHWHvxUFjjVAkRBMiFBZrzUfTLy/WCLk5mPdhbjKrAzQhlkkCQtFjraIUR6loAGaFuJmU3AgHDHiTCRFHGIZNRrjKVynK8c7gcIK1raRgQKJGkNKecBqznh8ISUHP8A3CxDxQT8R9YIC6WkJgjqw8I40QJNlEdrlaJd41nUTS7b2g6bgRt2+9fIdLcY4q2TKSirZswWmCmTOW/xat+c+S/KYu1K2jnyX5TTgzH54+mdemEB4kx3YIvG3iZx52nV/iH0+UubNxTszbzXAGtuN/2mcotK2P54+jp0qoOFvASWqg8JqUr2FyLw0xynLMSVTLjli/suvXPSIao55+UlKy34w2e8pGl2I3GMdTwx1IghoYqnnBv0GgHS0imSZYRgY68VhRFMgdI01AZVqVJX+0npFVhdF/dvEVMola7HWGtNjoYVQ7FNUN9Zksmg0yPQqKLKBrAWoBpeG6qOJibiUSw3r3yAkor6C311kJVtwEb27ngPSABCi54n1k9mIC1G/EYDDeMBkvu84AcWkNSEaqqICBWr0jlqueHoIk0STla0eg3YhqwbvqTCvML342iqjcjAA9wTQe0KDeQDRSfX9ptxlxmj24+9UGnuD4mVHsyzPxNVGIMpKgTHPKa2cYAM2+xQWJAyuQJq0TpOl9nKI3GYjg+R5WA+cyyuoscVZdTZz6gEZ8D+knFYBFUsFKkW56m3A982iV7d0GtW3kJtra04uUrL4qjRYbU90shieEbSCi+QGfKO+0Ac50xejqxLxRWFJzofhJOHaMfGgcBFviidBKtl6MV92E2KOgETe8dTA5QoBPasY2mh5SytUCKqYkdYrYw0qAQ/tI6yoGvCAhWwstCtfSZKu8ZkVIdlVkElAsWCeAEncblNDMPsCTe8eHtlELWtxuYpn3jEO6LLOOecRnDp0xqY0BYB2INSRvHlLXbIPw+ginxN9IC/YSVQOJi6lYHhBAvGrTTWA9sXTS+ssLRHWJdhpBUwBFoIutvGczttgazW4AKPSdJhEDMLi4FiRz6X0no+H9i9nVFFQUA4cBgWd+BGo3pUY/ZlmdqjwXdykbms98x3sJgnpuiYdEZkKq4vvI1vdYEnQ2niVbCNSZqdRbOjFHHJlOfh1lvRzONFRDYTfYFDUw70190uWsTwHC9/KaGrle03Wxa26i5i92+MyyXVr2JMfsTBthmYVnG6+7uWLEZX3siMuIlfbG0q61SKYvRJXdO7dTzIYdT6Sziqhq23st24FuvOGmMG52dvuA587308Znzt8mrZTZZrNumwiWeLoD3RqY00iZaVJHVH/lAob8ZbpAchFJhW1IjAto2zRDqkURFvXPKMRr8YqHZlohhL6hbaRL20gmFFYRqwhTMk0zBsVETJBkwGJOItpFmqzaeQiCssUMuMZF2CqcxDaqBwExiDwgvTMAAvfOSXMELDVbxgLJlmgBIFFdT6iSXUcCPjENKg6kS4ykKxvH9qBlACoeMZTW+UMpfOQagUdfjKSslui3TUDhO89hdpXDUCf507vxKPj4meeUqhKg2tL2z8Q9N0dD7ytvC/DrfpxHjL6M2rPX99r8PQzzr/APUfZveVscl95VQVEtkQpI3+d7EA9Fm/q+2Q/DS82+Qmn2r7aFkZGRCrqVK5kkEEHO+XlE5RF8Un9Hjr1L6RtDFWAXd8bjUwcQiqxAvYc8j5QaeHdzYKfEECVSox4SuqN9g9nVmYbtNjc2Ga5nPL70vV9gYqmju9B1UZlrAgDQkgnnNp7KI7WRz90A3HMcPQT02i1NqRR2FmUqwJAyOXnnMPFurNngaSdM8ZokhRflG/aiNBN9X9mmUkBt4AkA8bi+RylHG7MamAxAsTaJSi9HR8bijX/a26eUE1WOsJjADyiWxqAmNAtELXtpCFa+VoDTQZfO8jt+kNKYMemETr5xNpDSEDEdPWEKxOUsdgg0HnEvujhaCaY6ZiiZA3pMAKq4q2kF8STpGMMpW35RGx6C0I1eZihVvpGrTTU+sAI3hIKXhPuafrBRx4QABqHWCqCPdweErtlxgDHi0VVqgEC+Z4DK8o4jGaL5/Ka9Tckm5PG86IfjuW3oly9G8o1rmxvH1aQFmJJGWU0P8AiW5bWxvNxWxKWR7jdYA25juilBxM3KzZU1JzAyy8L84564SwFu8g5+UoU9sLTZU3mSnUsjsv4V0a3E2vfuvLO0sFXouFX3xwDnX6ymMv5KjJIRtDaQVSHNjOdfEu/wBwFr66eJm1qbJJ991yvfLhfjLCBVFgPKTziutnVhxSzK26X+mlwWzbHebM+gPSbdEA75Iii9zIcpS7OyOGEFSR1fsk63a/G/pYTs6NAHOef+zdUK9r6Xnomym3hfSYteRGbxVok4YTSe0+DvSIHEZjvnQNUANpU2wn/iZtbWA5mC70c/L2eTtnAMtYygyN74AJzy4RKOOc6UYNC1hqOkcK6wWxAgFELvdYzdJihWjFr9IDtGfZmPAesz7Ow5ecauK6TO0Ji2PQApHmJkPekwseipuEcYG5eG6mJ3TzlEDmpW1kIg1MWKJOsaMJ19IAE1JeN/WQqrCXDW1kmkOcVjoB7Tndt41g+6pyUC/Un9rTonQc5xWLqb7s2hJt3cB6ATbCvKzLI6QxNoNqLy2uLS1726TU7sxp2KTRipMdXrlzkMuQ4+MuqCVHusoAC5gj4yxslLKOuc2dSnvKQdfjOTLlt0dcfxXOF3s0valhuk5DgJ3XsttdqqClUcsadgoOqAWHeRw8pwbIQfQy3s7f395GKWuCw9QJjljyi1ZyY4ylLiuzucZtBHYoEIJupvwB5yzg/Zxdzec3PSc1hmO+pJJNxmcye8zv8Kb0z3Tka4qke3jgscaX7OK2hQCMVHD/AL+U01RyGynQ7YFnPd+s57FrnNoM0yLVl7A12A9z7xynq+yHC0EW+e6Ced55XshSpUnnPQcHV9wTObp6MpQ5RVjvtDNU5DnNtVO+APwgTnKzNvBV1P1+s3lJmVd3jITMssOmcF7UozOSB7qzQhOs7n2iT3GAXO04ME9Z0Y3cTnyLdjVSMWiDqYnPrJDnnNDMuJhV6+cYMMvL1MqLc84QpMdPWSy9ei32C8vjD3FtkBKS0yI0RNDsdYdJkSZMAsoPvc5iIZG/zMlX6yzMG9jHLTJ19TJQKdJDVLawGYFtxmMLzDVBic7wBlbajblN2vnaw7zl+s5QGdLtcbyhbEi+8f0/Wc+tK5IGVuc6cLSTMMj2LgGGykEg8RCwybzgdfhNW9WQlbSN9hVsoHIS4r9ZWpUTaOSj1nnyds9vHGoia2EDPe9lPEDiTL9NABYCwgrTEMCS22OOOEW2l2Noj3l7xO9wGaeHynB0eI7xO92YwCeEymW+jltuJ747jNW2HBNzN5t0++JrVQmEXov6Fpl4TrdlNcAzmlp85ssNj90BVBhJWJnUUqiod4iPG0F4nhOLxu2CPd1lCttpyLCKMJM5Zygnvs3u2tsDPUngJywqesS9YsbmDvTojHijlnPk9dFo5wRhyc7iBTcy3TMbJWyEp2jVqWytAcyu7m8XY7ot3vBZZWSs3P4Se1POOguwjVtpMkWmQ0IEImp9YLqmnxiC8OnTBjoVkb50mbrHiDDKW4SWqkQETTVdYzdT6vKwa8netAdiMZSO8SBlpaVGQHiJfLwuzB4xqVISjydHO4vDqh3xe50074Ozk97uHqZuq+ARjc3yytfKQmDVeFhG8qcaNsf4klJSdUYjdYwN1gGj1hBZiz0EN3xCXOBuQkfqIhlikbEd4nabKqXFvr6ynEIc52WxlyEymN9FnGUF3b2E5+ouZnTY6mbTktoY1KZO8T5RRt6QotJW2EyRlJwJpf8AFg5sAQOvyl/A1hfPWW4tdjU4y6Ix4965GR6SsrLrbym3xCBhY5zSYimUNvIzSErVHBng1Kx+8nTykb6dPKVA0alO8ujnsl2EEX6xv2frI3LQChfZsdPWMWk3L4RqvaZ2/SA6RCC3GNSovOV2qX0kKsKGmXw685kqA2mRUOyutMHibeUPcC8Dedk+wcMf9MHuZv0aA3s9h/yEf7m/uk/IhcTjVe8J6eXGdb/l+hyYeJ+cgez1D+fwb5iHNC4s40JDE68+zVI8Gcd5X+2AfZWn+d/Nf7Y+aDizlhhr53hGlbWdN/lZNKtT/iZVxPs+F4Vie8D5xck/sqC2aDK8cyDkIOJo7jWvfrILyWeiuhLoLzVY0svCbylS3zYReM2Q5v8Ad9flNINLs58+zl0Yk5kmb3BKtuAmmr0GR91u+bLC1Jpk6Mvx+zbKZ1uyavuicejTo9kV/dE5Jo9CjosTmvhacH7TYXiZ3KvcTQ7bwhZT7pPhJg6kZ14tM89otNthq/Ca7FYR0Y3UgcyJlN+s62rOfFLiddQqhkFyARw6xVenvCxHHgZpcPUJA5/GbRMUVGd7D4zGmno6Jyg47Kb0GU2IP7c4yneGccpOd/T5zDi0Os13R5zSvQ28AqLRDODwmILQoVjILCPRwITuDwIhY6KQ4ww0a69IIU8oCoyZJtMjA9B7Tpb0jFJOvwP6wwrflb68Zhpnk3/H5zlKANNuclb84VranyHzhBvGAAGjfn5ftBcBRc3HgRHNSBGa+QlDE7BpPmwqf8o0Flert2gpsWf+m/6zWY/2gpn7m8e9QBNifZyhyc+P7Q02Dhh/pk9+fxMrxBOmcPjcZvm5AHdKvajnO8r+zOGf8LL3C3wMrn2OoaFvP5yuUTpjnpVRxaYoD8VovEbQB/1PUztD7G0b5s3p8o3/ACfhNUJ72I+EalFGU8jl9Hl2MqKbe+CR1jMC/W89Lb2Kwh4Ux/W4i/8AIuH/AAK47nv8RNHmi1WzGClGVnI0atxNzsqtl4y/U9iyPuMw/wDYX9REL7KYkH7yW72+G7MJUz0YZo1tm1p4xQM2lbF7UIB3RfvPylqjsB7e848B84Nf2cDZF6gHQoP0kKKsJZsa62cttbHgrdkFjkbE/AznEcE5XtoNZ6TT9ksMDd0dzzdr/C0uUdgYZDdKe6em9/dNlOMVRxym3K0jg9lV0VgX3+llJ+E9B2ZikZRuh/FGHxEtJhQOH6/G8etN5nKSkS5N9gdoP+wPlINJG/Ch71Bjdxtfr0kdn9ZSRCGwKH/TTwT9ottnU/4S/wBEt9mvMeQ+cIINCPrxjsDXHZdH+Ev9H7wTseh/CH/MfCbVaX8x9YW4R+I+vyhbA1P+D4f+H5O/6wTsPDn8DD/eZt79frxkXX6Kw5MDTnYGH/n/AKjIm57Mc/8A5+cyHJ+w0UlQ8bH0j03+fmIsrDSnfUjxiGw91+a+IMJaZ13T4/OYMMdHPleLLMNb+EBFgYe+g85hwzaXEQle/wCFfKQla+lu4mAtlgK4/EfKEHGrW8PnFqT+Zh4yVZvznxsYAHu8mHkIL0z/ACzGLcwf9oiy/QeUBk7nVRCWnfVD9d8DLlCRBAAuzI0X1kFjy+Mk3HAmTvHn6CAgQ/1nCD/+p8SPiIk1DCFTpAY4AaBf6hI7NtFHoZgUcpBpCAiDTb8g8pG4fyD1HwMhlI1jELfmMBggfy28T85O93jxj1Un8RmNTPG/oICsQHPP4SC/OQ7EcvKD2nSABF15GSN36A+UBah6eUw1yNAfCAxgpr/L4gQxSOgXzI/WIXE/yiH23T1gIaUPL1Pzi2T6vJDQu16QASaY5jymRoqD8omQA//Z',
                width: 390,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
          ],
        ),
      ),
    );
  }
}

//NVIDIA Ekran kartı penceresi

class Nvidia extends StatelessWidget {
  const Nvidia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26282C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF416600),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "Ekran kartı modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //**************************************************************************************************************************
            //GTX 1050 TI

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NvidiaGTX1050TI()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "GTX 1050 TI",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //GTX 1650 TI

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NvidiaGTX1650TI()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "GTX 1650 TI",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //RTX 2060

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NvidiaRTX2060()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "RTX 2060",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //GTX 3050

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NvidiaRTX3050()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "RTX 3050",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //RTX 3060

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NvidiaRTX3060()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "RTX 3060",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//************************************************************************************************************************************
//NVIDIA İşlemci Kısmı

//NVIDIA GTX 1050 TI Ekran Kartı
class NvidiaGTX1050TI extends StatelessWidget {
  const NvidiaGTX1050TI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26282C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF416600),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1050i310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1050i510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1050i710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1050Ryzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1050Ryzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//NVIDIA GTX 1650 TI Ekran Kartı
class NvidiaGTX1650TI extends StatelessWidget {
  const NvidiaGTX1650TI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26282C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF416600),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1650i310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1650i510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1650i710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1650Ryzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1650Ryzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//NVIDIA RTX 2060 Ekran Kartı
class NvidiaRTX2060 extends StatelessWidget {
  const NvidiaRTX2060({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26282C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF416600),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX2060i310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX2060i510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX2060i710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX2060Ryzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX2060Ryzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//NVIDIA RTX 3050 Ekran Kartı
class NvidiaRTX3050 extends StatelessWidget {
  const NvidiaRTX3050({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26282C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF416600),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3050i310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3050i510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3050i710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3050Ryzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3050Ryzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//NVIDIA RTX 3060 Ekran Kartı
class NvidiaRTX3060 extends StatelessWidget {
  const NvidiaRTX3060({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26282C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF416600),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3060i310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3050i510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3060i710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3060Ryzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3060Ryzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//**********************************************************************************************************************************
//AMD Ekran kartı penceresi

class Amd extends StatelessWidget {
  const Amd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26282C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF7d0000),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        /* child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Nvidia'),
        ),*/
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "Ekran kartı modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //**************************************************************************************************************************
            //RX 560

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AmdRX560()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF7d0000),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "RX 560",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //RX 570

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AmdRX570()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF7d0000),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "RX 570",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Radeon RX 5600 XT

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AmdRX5600XT()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF7d0000),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "RX 5600 XT",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Radeon RX 6600 XT

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AmdRX6600XT()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF7d0000),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "RX 6600 XT",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Radeon RX 6700 XT

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AmdRX6700XT()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF7d0000),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "RX 6700 XT",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//************************************************************************************************************************************
//AMD İşlemci Kısmı

//AMD Radeon RX 560 Ekran Kartı
class AmdRX560 extends StatelessWidget {
  const AmdRX560({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26282C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF7d0000),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX560i310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX560i510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX560i710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX560Ryzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX560Ryzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//AMD Radeon RX 570
class AmdRX570 extends StatelessWidget {
  const AmdRX570({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7d0000),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX570i310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX570i510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX570i710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX570Ryzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX570Ryzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//AMD Radeon RX 5600 XT
class AmdRX5600XT extends StatelessWidget {
  const AmdRX5600XT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7d0000),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX5600XTi310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX5600XTi510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX5600XTi710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX5600XTRyzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX5600XTRyzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//AMD Radeon RX 6600 XT
class AmdRX6600XT extends StatelessWidget {
  const AmdRX6600XT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7d0000),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6600XTi310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6600XTi510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6600XTi710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6600XTRyzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6600XTRyzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//AMD Radeon RX 6700 XT
class AmdRX6700XT extends StatelessWidget {
  const AmdRX6700XT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6700XTi310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6700XTi510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6700XTi710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6700XTRyzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6700XTRyzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//**************************************************************************************************************************
//İntel Core i3 10100 - Gtx 1050 TI
class GTX1050i310100 extends StatelessWidget {
  const GTX1050i310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - Gtx 1050 TI
class GTX1050i510400 extends StatelessWidget {
  const GTX1050i510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K - Gtx 1050 TI
class GTX1050i710700K extends StatelessWidget {
  const GTX1050i710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - Gtx 1050 TI
class GTX1050Ryzen53600 extends StatelessWidget {
  const GTX1050Ryzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - Gtx 1050 TI
class GTX1050Ryzen73700X extends StatelessWidget {
  const GTX1050Ryzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i3 10100 - Gtx 1650 TI
class GTX1650i310100 extends StatelessWidget {
  const GTX1650i310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - Gtx 1650 TI
class GTX1650i510400 extends StatelessWidget {
  const GTX1650i510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K - Gtx 1650 TI
class GTX1650i710700K extends StatelessWidget {
  const GTX1650i710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - Gtx 1650 TI
class GTX1650Ryzen53600 extends StatelessWidget {
  const GTX1650Ryzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - Gtx 1650 TI
class GTX1650Ryzen73700X extends StatelessWidget {
  const GTX1650Ryzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i3 10100 - Rtx 2060
class RTX2060i310100 extends StatelessWidget {
  const RTX2060i310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - Rtx 2060
class RTX2060i510400 extends StatelessWidget {
  const RTX2060i510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K Rtx 2060
class RTX2060i710700K extends StatelessWidget {
  const RTX2060i710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - Rtx 2060
class RTX2060Ryzen53600 extends StatelessWidget {
  const RTX2060Ryzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - Rtx 2060
class RTX2060Ryzen73700X extends StatelessWidget {
  const RTX2060Ryzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i3 10100 - Rtx 3050
class RTX3050i310100 extends StatelessWidget {
  const RTX3050i310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - Rtx 3050
class RTX3050i510400 extends StatelessWidget {
  const RTX3050i510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K Rtx 3050
class RTX3050i710700K extends StatelessWidget {
  const RTX3050i710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - Rtx 3050
class RTX3050Ryzen53600 extends StatelessWidget {
  const RTX3050Ryzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - Rtx 3050
class RTX3050Ryzen73700X extends StatelessWidget {
  const RTX3050Ryzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i3 10100 - Rtx 3060
class RTX3060i310100 extends StatelessWidget {
  const RTX3060i310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - Rtx 3060
class RTX3060i510400 extends StatelessWidget {
  const RTX3060i510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K Rtx 3060
class RTX3060i710700K extends StatelessWidget {
  const RTX3060i710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - Rtx 3060
class RTX3060Ryzen53600 extends StatelessWidget {
  const RTX3060Ryzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - Rtx 3060
class RTX3060Ryzen73700X extends StatelessWidget {
  const RTX3060Ryzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//***************************************************************************************************************
//İntel Core i3 10100 - rx560
class RX560i310100 extends StatelessWidget {
  const RX560i310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - RX560
class RX560i510400 extends StatelessWidget {
  const RX560i510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K - RX560
class RX560i710700K extends StatelessWidget {
  const RX560i710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - RX560
class RX560Ryzen53600 extends StatelessWidget {
  const RX560Ryzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - RX560
class RX560Ryzen73700X extends StatelessWidget {
  const RX560Ryzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i3 10100 - RX570
class RX570i310100 extends StatelessWidget {
  const RX570i310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - RX570
class RX570i510400 extends StatelessWidget {
  const RX570i510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K - RX570
class RX570i710700K extends StatelessWidget {
  const RX570i710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - RX570
class RX570Ryzen53600 extends StatelessWidget {
  const RX570Ryzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - RX570
class RX570Ryzen73700X extends StatelessWidget {
  const RX570Ryzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i3 10100 - RX6600XT
class RX6600XTi310100 extends StatelessWidget {
  const RX6600XTi310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - RX6600XT
class RX6600XTi510400 extends StatelessWidget {
  const RX6600XTi510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K RX6600XT
class RX6600XTi710700K extends StatelessWidget {
  const RX6600XTi710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - RX6600XT
class RX6600XTRyzen53600 extends StatelessWidget {
  const RX6600XTRyzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - RX5600XT
class RX5600XTRyzen73700X extends StatelessWidget {
  const RX5600XTRyzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i3 10100 - RX6600XT
class RX5600XTi310100 extends StatelessWidget {
  const RX5600XTi310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - RX6600XT
class RX5600XTi510400 extends StatelessWidget {
  const RX5600XTi510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K RX6600XT
class RX5600XTi710700K extends StatelessWidget {
  const RX5600XTi710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - RX6600XT
class RX5600XTRyzen53600 extends StatelessWidget {
  const RX5600XTRyzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - RX6600XT
class RX6600XTRyzen73700X extends StatelessWidget {
  const RX6600XTRyzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i3 10100 - RX6700XT
class RX6700XTi310100 extends StatelessWidget {
  const RX6700XTi310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - RX6700XT
class RX6700XTi510400 extends StatelessWidget {
  const RX6700XTi510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K RX 6700 XT
class RX6700XTi710700K extends StatelessWidget {
  const RX6700XTi710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - RX 6700 XT
class RX6700XTRyzen53600 extends StatelessWidget {
  const RX6700XTRyzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - RX 6700 XT
class RX6700XTRyzen73700X extends StatelessWidget {
  const RX6700XTRyzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}
