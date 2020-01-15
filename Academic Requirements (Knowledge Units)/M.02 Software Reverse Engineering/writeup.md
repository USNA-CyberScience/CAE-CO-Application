# M.2 Software Reverse Engineering (must include hands-on lab exercises)

The discipline of reverse engineering provides the ability to deduce the
design of a software component, to determine how something works (i.e.,
recover the software specification), discover data used by software, and
to aid in the analysis of software via disassembly and/or decompilation.
The ability to understand software of unknown origin or software for
which source code is unavailable is a critical skill within the cyber
operations field. Use cases include malware analysis and auditing of
closed source software.

Specific topics to be covered in this knowledge unit include, but are
not limited to:

<table>
  <tbody>
    <tr>
      <th>Topic</th>
      <th>Assessment</th>
    </tr>
    <tr>
      <td>Reverse engineering techniques</td>
      <td>
        <ul>
          <li><a href="../../Course%20Documents/SY485J%20REVERSE%20ENGINEERING/000-coursePolicy.pdf"">Link to SY485J syllabus]</a>
          <li>Lab 4, 5, 7, and 8 are the examples provided.
          <li>Static and dynamic analysis techniques and tools are the backbone for this course.
        </ul>
      </td>
    </tr>
    <tr>
      <td>Reverse engineering for software specification recovery</td>
      <td>
        <ul>
          <li>This is the entire intent of the course. All Labs require students to do this. Labs 4 & 5 are the examples provided.
        </ul>
      </td>
    </tr>
    <tr>
      <td>Reverse engineering for malware analysis</td>
      <td>
        <ul>
          <li>The last 4 weeks of the course are primarily devoted to malware reverse engineering and the specific characteristics seen in malware software.
          <li>Labs 9 & 10 require students to perform malware analysis.
        </ul>
      </td>
    </tr>
    <tr>
      <td>Reverse engineering communications (to uncover communications protocols)</td>
      <td>
        <ul>
          <li>Part of the discussion in reversing malware is detecting whether the malware is communicating with another entity and how this is done. Demos are performed in class of how to detect malware using Wireshark. There is also a lesson on specific secure communication protocols to include IKE for IPsec and TLS. Lab 10 requires the students to use Wireshark to detect malware exfiltrating data.
          <li>See following document in course folder: <a href="../../Course%20Documents/SY485J%20REVERSE%20ENGINEERING/Secure_Communication_Protocols.pdf">Secure Communication Protocols.pdf</a>
        </ul>
      </td>
    </tr>
    <tr>
      <td>Deobfuscation of obfuscated code</td>
      <td>
        <ul>
          <li>Deobfuscating obfuscated code is discussed in detail in Lesson 15 - see following document in course folder: <a href="../../Course%20Documents/SY485J%20REVERSE%20ENGINEERING/Anti_Reversing_Techniques.pdf">Anti Reversing Techniques.pdf</a>
        </ul>
      </td>
    </tr>
    <tr>
      <td>
        Common tools for reverse engineering including but not limited to:
        <ul>
          <li>Disassemblers (e.g., IdaPro)</li>
          <li>Debuggers (e.g., gdb, OllyDbg, WinDbg)</li>
          <li>Virtualization-based sandbox environments (e.g., VMware, Xen)</li>
          <li>Process and file activity monitors (e.g., ProcMon)</li>
          <li>Network activity monitors (e.g., Wireshark, tcpdump, TcpView)</li>
        </ul>
      </td>
      <td>
        <ul>
          <li>Students get first hand experience with GDB, Objdump, and Ghidra as well as learn about IdaPro</li>
          <li>Students perform reversing inside of a VM</li>
          <li>Labs 4, 5, 7, 8, 9, and 10 all use reverse engineering tools</li>
          <li>Lab 10 - students use Wireshark to view traffic as it travels across a network.</li>
      </td>
    </tr>
  </tbody>
</table>

*Outcome*: Students will be able to use the tools mentioned above to
safely perform static and dynamic analysis of software (or malware) of
potentially unknown origin, including obfuscated malware, to fully
understand the software's functionality.

In addition to course syllabi, applications must include examples of
hands-on lab exercises to demonstrate that students have achieved
mastery of this KU.
