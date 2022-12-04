import 'package:flutter/material.dart';

class MyTerms extends StatelessWidget {
  const MyTerms({Key? key}) : super(key: key);

  static TextStyle kStyle = TextStyle(
    color: Colors.black,
    fontSize: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blueGrey[600],
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Terms and Conditions",
          style: TextStyle(
            color: Colors.blueGrey[600],
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Text(
              "1. Information: Company shall provide the operating partner with manuals as may be required for the operation, installation, repair or maintenance of the JanaJal Water ATM or a part thereof. Operating partners shall be entitled to rely upon such information in the performance of the services. The company shall also provide the operating partner with a description of the project's operating requirements.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "2. Overhaul of Major Equipment and Capital Improvements: Subject to the operating partner maintaining and operating the machine in good condition and subject to normal wear and tear, the cost of all major equipment teardowns and overhauls and all capital improvements shall be the responsibility of the company.\n\nThe operating partner shall promptly notify Company in writing of any such teardowns and overhauls of major equipment or capital improvements that the operating partner believes are necessary or advisable together with a proposed schedule for completing such repairs or improvements. The company shall get the annual maintenance done at its own cost and responsibility.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "3. Insurance of the Machine: It shall be the responsibility of the company to insure all the machines and related parts of the machine.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "4. Training, Certificate and Uniform: The company shall provide the operating partner with adequate training and guidance for operating, maintaining and managing the machine at the cost of the operating partner. Also, a lab certificate shall be issued by the company about the purity and cleanliness of water which shall mandatorily be displayed by the operating partner during the operation.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "5. Recharge of Card: The card which shall be used for dispensing water would be recharged by the Company. The metering system of the machine shall work on a prepaid basis. The operating partner shall dispense the water from the vending machine by paying & recharging its card in advance through online transfer using secured payment gateways finalised by the company. The recharge value shall be available in the multiples of Rs. 1000/- (Rupees One thousand) only.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "6. Inspection and Monitoring of the Machine: The company or any of its authorized representatives shall have the right to inspect, verify and audit all accounts and monitor the machine and the unit at all times without any prior information to the operating partner. In case the verification/ audit reveals non-compliance on the part of the operating partner, the operating partner shall be liable to pay damages as may be decided by the company, without any protest. This shall be in addition to other remedies as may be available to the company including the right to terminate this agreement. Operating partner’s responsibilities, representations and warranties.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "7. Standards for Performance of the Services: Operating partner shall be liable and responsible for day-to-day affairs, operation, and management of the machines and the unit. The operating partner shall perform the services in a prudent, reasonable, and efficient manner and ensure the highest standards of hygiene, by (i) operating Manuals and applicable vendor warranties, (ii) all applicable laws, (iii) Prudent Utility Practices, (iv) the Project Agreements, (v) the requirements of any system operating partner, and (vi) all insurance policies specified in this agreement. Operating partners shall use the highest standards and all reasonable efforts to optimize the useful life of the machine and to minimize costs and project outages or other unavailability.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "8. Operating partner's Personnel Standards: Operating partner shall provide as reasonably necessary all labour and professional, supervisory and managerial personnel as are required to perform the services. Such personnel shall be well qualified to perform the duties to which they are assigned and shall meet any requirements under the agreement.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "9. Proper Display of Board and Certificate: The operating partner shall ensure that during the entire period of the operation of the project, the display board of the machine shall remain visible to all customers or any concerned authority or authorities who came for inspection and monitoring of the machine. Also, the lab certificate provided by the company about the purity and cleanliness of the water shall be affixed by the operating partner in a conspicuous place so that it can easily be visible and noticeable to anyone.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "10. Hygiene, Safety and upkeep of the Machine: The operating partner shall ensure the highest standards of hygiene, and proper upkeep and undertake periodic, preventive and regular maintenance of the machine and keep the unit safe and clean in all respects. The operating partner shall be bound by the instructions, directions, suggestions etc. as may be issued by the company from time to time.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "11. Operating partner warrants that it shall undertake and provide the services with reasonable care and skill, and by good industry practice, the provisions of applicable laws and the provisions of this agreement.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "12. The operating partner shall at all times ensure that the services are provided, at all times, by performance parameters, standards, service levels and requirements prescribed by the company and any other parameters, levels, standards or requirements as may be prescribed from time to time (collectively, the “Minimum Service Levels”).",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "13. The operating partner shall ensure that the minimum service levels are monitored on a fortnightly basis and the operating partner will submit to the company a regular fortnightly report, on compliance with the minimum service levels. Company further reserves the right to independently inspect, verify and audit by itself or through its representatives and nominees, the minimum service levels for any period. If any such report or any inspection, or verification, shows that the operating partner has not complied with one or more of the minimum service levels, the operating partner shall become liable to pay liquidated damages in respect of each such breach or non-compliance, at the rate as may be ascertained and decided by the company. For the avoidance of doubt, it is clarified that Company may, at its discretion, draw/adjust such liquidated damages from and against the performance security deposit or deduct them from the revenue payable to the operating partner under this agreement. The company shall be entitled to terminate this agreement in case the operating partner fails to maintain the minimum service levels.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "14. The operating partner shall promptly inform the company upon the occurrence of any issue/ incident/emergency at the unit. The operating partner shall cooperate fully and participate completely in such cases.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "15. The operating partner shall at all times, coordinate and fully cooperate with the customers, regulatory authorities, other service providers/vendors, police officials and users to ensure the seamless and harmonious operation of the unit. The operating partner shall comply with all requests and directions of the company in this regard. The operating partner shall immediately bring to the notice of the company any issue or notice as may be pointed out or brought forth by any of the authorities. The operating partner shall cooperate and be polite with all the officials at all times. The operating partner shall immediately and amicably settle any disputes and shall keep the Company indemnified and harmless against any complaint received by the company against the operating partner.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "16. The operating partner shall not erect any communication facilities or antennas or advertise in any manner on any part of the unit whether through any electric lights, sky signs, sign boards, stickers, posters or any other form except for the material provided by the company. The operating partner shall not advertise or promote or market at the unit, any products, services or other than the services provided by it, without the prior written approval of the Company, which may be withheld, delayed or refused, at its sole discretion of the company.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "17. The operating partner shall be liable for obtaining all relevant approvals and license(s) required under applicable Laws for performing its obligations under this agreement and shall submit proof of the same, to the satisfaction of the company.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "18. The operating partner shall, at its own cost and expense procure all consumables including 300 ml glasses, 1-litre, 2-litre and 5-litre containers/bottles from the company and shall ensure the consumables are adequately available at all times. The operating partner shall ensure to procure consumables from the company only and shall not use any substitutes or alternate products at any point in time.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "19. The operating partner shall be solely liable for the operation of the unit including without limitation (i) bearing all operating costs, (ii) day-to-day expenses (iii) expenses such as electricity, and raw water (iv) other miscellaneous expenses related to operating the machine/unit, (v) ensuring there are sufficient safety precautions, fire protection, connection to utility points, sewerage, foul water drainage etc. (vi) promptly paying all expenses incurred in respect of the operation of the unit.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "20. The operating partner shall carry out day-to-day repairs required during routine operations from the authorized technicians only. Visit charges of Rs. 1000/- plus service tax would be for every visit of the technician and payable by the operating partner. The operating partner shall further be liable to pay for any unscheduled visits and any cost of spares replaced parts etc.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "21. The operating partner shall ensure that the machine/unit is at all times throughout the term, maintained and kept in good working condition, including without limitation by entering into appropriate maintenance agreements for periodic servicing, cleaning and maintenance of the machine and infrastructure at the unit. The operating partner shall not tamper, or make any changes or alterations to the machine, without the prior written approval of the company.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "22. The operating partner shall be solely responsible for all cash collections at his level and the company shall not be liable and/or responsible for any losses caused on account of theft, cheating etc. The operating partner shall keep records of all proceeds/books of accounts transparently and shall be made available to the company as and when desired.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "23. The operating partner shall only be granted a bare, personal, non-transferable, non-assignable, non-heritable, non-exclusive license to use the machine/unit solely for and incidental to, the purposes of this agreement, subject to the terms and conditions set out in the respective license agreements of the company with other parties.\n\nThe operating partner expressly acknowledges and agrees that it has not been granted possession of the unit and that the company continues to retain exclusive and absolute possession and control of the machine and unit. The operating partner acknowledges and agrees that anything to the contrary notwithstanding, no tenancy, sub-tenancy, easement, lease, right, title, or interest whatsoever is or shall be created or transferred or deemed to have been created or transferred in respect of the unit nor shall any express or implied conduct of the parties or any amendment in law operate to do so, and operating partner shall not plead any oral variation to the provisions hereof.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "24. On the termination of the agreement, the operating partner shall handover the vacant charge of the unit and deliver the machine in good working condition as provided by the company to the operating partner.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "25. The operating partner shall not, directly or indirectly, undertake or be engaged in, any activity or business at the site/unit or otherwise, other than the license granted hereunder, except under a separate contract/ commercial arrangement for the same with the company.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "26. The operating partner shall ensure that neither himself nor any employees/assistants etc. Indulge in any unlawful activity and nor shall be indulged in any incident of eve teasing and harassment to women. Such incidents shall be dealt with in the most stringent manner and accordance with the corporate policies of the company besides applicable laws. The company also reserves its right to report such instances to the appropriate authorities and initiate suitable enquiries.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "27. The operating partner shall maintain, at a location acceptable to the company, the project operating logs, records, and reports that document the operation and maintenance of the project, all in form and substance sufficient to meet the company's reporting requirements under the Project Agreements.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "28. The operating partner shall maintain regular and proper books of account by applicable laws along with other supporting documents regarding sales/ transactions effected by the operating partner at the unit and such books of account/ documents shall at all times be kept open for inspection by the company.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "29. The company reserves its right to require the operating partner to install, operate and maintain computerized billing and inventory systems/ processes for capturing and accessing real-time transaction information and other data and provide access to such systems to the company, all as required by the Company, from time to time. The operating partner acknowledges and agrees that it shall comply with all such requirements, and not raise any objections in respect thereof.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "30. The company shall have the right to audit and inspect, either by itself or through auditors, the books of account, documents and other financial statements of the operating partner at any time without any notice.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "31. The company reserves the right to require the operating partner to submit reports, statements and other information in connection with the performance of any of its obligations under this agreement, in such formats and at such intervals, all as required by the company, from time to time.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "32. The operating partner shall provide the company with necessary assistance in connection with the company's compliance with reporting requirements under the project agreements, applicable laws or any other agreement to which the company is a party relating to the project. Such assistance shall include providing reports, records, logs and other information that Company may reasonably request as to the project or its operation.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "33. The operating partner shall procure and pay all charges of water, electricity and other amenities and infrastructure. The operating partner shall procure all other utilities, amenities, infrastructure or services as may be required by it.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "34. The operating partner shall be solely responsible for making arrangements for the engagement of suitable skilled and trained personnel and labour for undertaking the license under this agreement. The operating partner shall be solely responsible for the supervision and control of its personnel and all employment arrangements, including payment of salaries, statutory dues, and employment benefits and for compliance with all Applicable Laws. Under no circumstances shall there arise any contractual relationship between the company and the personnel of the operating partner or its subcontractors (if permitted). The operating partner shall indemnify, defend and hold Company harmless from and against any liabilities incurred by the company as a result of the breach of applicable laws by the operating partner, or claims against the company by the personnel or sub-contractors engaged by the operating partner.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "35. The company may at any time request the removal and replacement of any personnel or subcontractor engaged by the operating partner, for cause or without cause to be notified to the operating partner, and the operating partner agrees to promptly comply with such request.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "36. All individuals employed by the operating partner to perform the services shall be employees of the Operating partner for all purposes, and their working hours, rates of compensation and all other matters relating to their employment shall be determined solely by the operating partner. Concerning labour matters, hiring personnel, and employment policies, operating partners shall comply with all applicable laws and statutory requirements. The operating partner shall provide to the company proof of payments/statutory liabilities made to the employees or persons working for and under the operating partner. In the event it is found that the operating partner has failed to make any payments, the Company shall withhold the payments to be made to the operating partner. If the operating partner fails to make the payments, the company shall make the payment directly to the employees of the operating partner from the fee payable to the operating partner. The operating partner shall adhere to this without any protest or demur.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "37. The employees of the operating partner shall be dressed in a clean uniform and shall be polite with the customers/ concerned authorities/officials or any person/officer visiting the said unit. The operating partner and his employees etc. shall always maintain good conduct such that it upholds the stature, respect and dignity of not only himself but it shall also maintain the goodwill and respect of the company.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "38. The operating partner shall employ the personnel with bonafide good character, provide an identity card and depute the personnel only after their police verification. The operating partner shall immediately remove and replace the personnel if the operating partner, at its discretion, finds him unfit or undesirable or not suitable for the purpose.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "39. The operating partner shall maintain and shall not disclose any information disclosed to the operating partner or any contents of operating systems manuals to any person except those who need to know for the successful implementation of this agreement.",
              style: kStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "40. The operating partner shall acquire no right to use any trade name, trade mark, service name or any other intellectual property right of the company. All right, titles and interests in the JanaJal ATM and the unit, as the case may be, shall at all times remain with the company and the operating partner shall have no rights whatsoever.",
              style: kStyle,
            ),
          ],
        ),
      ),
    );
  }
}
