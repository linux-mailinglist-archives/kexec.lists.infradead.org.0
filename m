Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F00F0CEA59
	for <lists+kexec@lfdr.de>; Mon,  7 Oct 2019 19:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNjnYThGR87m5O6aw53A4heiQtklt7VfLRoLlImUxeI=; b=mtsC6aRf8NaDxX
	LeJg4YRrLRc0y7zgoqcLbzf6+7mAJtkSg5u0KOG/LIuhX338QOKQSeLofZewIKbutCdKok1G9U2Da
	Nn9I261nCkV1lJIwA8F+bgb3q9HMWv9r9SD4p63XrkA/IyQb+ehCV+ffBhCT3RJJCn71UC0raAQeh
	eOFzHQd7d//SmKMZNzrha7TL1hsG9MNaEd92bbNSyVq9HJUPoUHCRHfdP1XfqulWZ7wD3D0LpS+o7
	0apHSEHaklBmJL7Fo/SgjBG0MbWi65Oc3NbDcD2yo43Lpu5OnY4s2lZiuz0A/rHrZni35ubJLkZN5
	w+bA2RqYOs37twKvmX/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHWZo-0007Vt-Hp; Mon, 07 Oct 2019 17:13:40 +0000
Received: from out03.mta.xmission.com ([166.70.13.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHWZk-0007J6-JE
 for kexec@lists.infradead.org; Mon, 07 Oct 2019 17:13:38 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out03.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1iHWZD-0003Yx-EL; Mon, 07 Oct 2019 11:13:03 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1iHWZB-0006FD-OE; Mon, 07 Oct 2019 11:13:03 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: lijiang <lijiang@redhat.com>
References: <20191007070844.15935-1-lijiang@redhat.com>
 <20191007093338.GA4710@dhcp-128-65.nay.redhat.com>
 <e179c616-f427-769f-aa5b-058c63040015@redhat.com>
Date: Mon, 07 Oct 2019 12:12:17 -0500
In-Reply-To: <e179c616-f427-769f-aa5b-058c63040015@redhat.com> (lijiang's
 message of "Mon, 7 Oct 2019 19:53:57 +0800")
Message-ID: <87bluseaz2.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1iHWZB-0006FD-OE; ; ; mid=<87bluseaz2.fsf@x220.int.ebiederm.org>;
 ; ; hst=in01.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX1+gQMszSm+ZkbXzH79qaWxb0n7iQC2kol4=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa07.xmission.com
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_TooManySym_01,
 T_TooManySym_02,XMSubLong,XM_B_Unicode,XM_Body_Dirty_Words
 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.5000] *  0.7 XMSubLong Long Subject
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 *  0.0 XM_B_Unicode BODY: Testing for specific types of unicode
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa07 1397; Body=1 Fuz1=1 Fuz2=1]
 *  0.5 XM_Body_Dirty_Words Contains a dirty word
 *  0.0 T_TooManySym_02 5+ unique symbols in subject
 *  0.0 T_TooManySym_01 4+ unique symbols in subject
X-Spam-DCC: XMission; sa07 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: *;lijiang <lijiang@redhat.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 930 ms - load_scoreonly_sql: 0.03 (0.0%),
 signal_user_changed: 2.8 (0.3%), b_tie_ro: 2.0 (0.2%), parse: 1.21
 (0.1%), extract_message_metadata: 19 (2.0%), get_uri_detail_list: 7
 (0.8%), tests_pri_-1000: 12 (1.3%), tests_pri_-950: 1.32 (0.1%),
 tests_pri_-900: 1.09 (0.1%), tests_pri_-90: 72 (7.7%), check_bayes: 69
 (7.4%), b_tokenize: 23 (2.4%), b_tok_get_all: 22 (2.4%), b_comp_prob:
 9 (1.0%), b_tok_touch_all: 9 (1.0%), b_finish: 0.79 (0.1%),
 tests_pri_0: 803 (86.4%), check_dkim_signature: 1.13 (0.1%),
 check_dkim_adsp: 2.7 (0.3%), poll_dns_idle: 0.53 (0.1%), tests_pri_10:
 2.5 (0.3%), tests_pri_500: 11 (1.2%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH v2] x86/kdump: Fix 'kmem -s' reported an invalid
 freepointer when SME was active
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_101336_663586_C2084071 
X-CRM114-Status: GOOD (  26.58  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com, tglx@linutronix.de,
 Dave Young <dyoung@redhat.com>, vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

bGlqaWFuZyA8bGlqaWFuZ0ByZWRoYXQuY29tPiB3cml0ZXM6Cgo+IOWcqCAyMDE55bm0MTDmnIgw
N+aXpSAxNzozMywgRGF2ZSBZb3VuZyDlhpnpgZM6Cj4+IEhpIExpYW5ibywKPj4gT24gMTAvMDcv
MTkgYXQgMDM6MDhwbSwgTGlhbmJvIEppYW5nIHdyb3RlOgo+Pj4gQnVnemlsbGE6IGh0dHBzOi8v
YnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjA0NzkzCj4+Pgo+Pj4gS2R1bXAg
a2VybmVsIHdpbGwgcmV1c2UgdGhlIGZpcnN0IDY0MGsgcmVnaW9uIGJlY2F1c2Ugb2Ygc29tZSBy
ZWFzb25zLAo+Pj4gZm9yIGV4YW1wbGU6IHRoZSB0cmFtcGxpbmUgYW5kIGNvbnZlbnRpb25hbCBQ
QyBzeXN0ZW0gQklPUyByZWdpb24gbWF5Cj4+PiByZXF1aXJlIHRvIGFsbG9jYXRlIG1lbW9yeSBp
biB0aGlzIGFyZWEuIE9idmlvdXNseSwga2R1bXAga2VybmVsIHdpbGwKPj4+IGFsc28gb3Zlcndy
aXRlIHRoZSBmaXJzdCA2NDBrIHJlZ2lvbiwgdGhlcmVmb3JlLCBrZXJuZWwgaGFzIHRvIGNvcHkK
Pj4+IHRoZSBjb250ZW50cyBvZiB0aGUgZmlyc3QgNjQwayBhcmVhIHRvIGEgYmFja3VwIGFyZWEs
IHdoaWNoIGlzIGRvbmUgaW4KPj4+IHB1cmdhdG9yeSgpLCBiZWNhdXNlIHZtY29yZSBtYXkgbmVl
ZCB0aGUgb2xkIG1lbW9yeS4gV2hlbiB2bWNvcmUgaXMKPj4+IGR1bXBlZCwga2R1bXAga2VybmVs
IHdpbGwgcmVhZCB0aGUgb2xkIG1lbW9yeSBmcm9tIHRoZSBiYWNrdXAgYXJlYSBvZgo+Pj4gdGhl
IGZpcnN0IDY0MGsgYXJlYS4KPj4+Cj4+PiBCYXNpY2FsbHksIHRoZSBtYWluIHJlYXNvbiBzaG91
bGQgYmUgY2xlYXIsIGtlcm5lbCBkb2VzIG5vdCBjb3JyZWN0bHkKPj4+IGhhbmRsZSB0aGUgZmly
c3QgNjQwayByZWdpb24gd2hlbiBTTUUgaXMgYWN0aXZlLCB3aGljaCBjYXVzZXMgdGhhdAo+Pj4g
a2VybmVsIGRvZXMgbm90IHByb3Blcmx5IGNvcHkgdGhlc2Ugb2xkIG1lbW9yeSB0byB0aGUgYmFj
a3VwIGFyZWEgaW4KPj4+IHB1cmdhdG9yeSgpLiBUaGVyZWZvcmUsIGtkdW1wIGtlcm5lbCByZWFk
cyBvdXQgdGhlIGluY29ycmVjdCBjb250ZW50cwo+Pj4gZnJvbSB0aGUgYmFja3VwIGFyZWEgd2hl
biBkdW1waW5nIHZtY29yZS4gRmluYWxseSwgdGhlIHBoZW5vbWVub24gaXMKPj4+IGFzIGZvbGxv
dzoKPj4+Cj4+PiBbcm9vdCBsaW51eF0kIGNyYXNoIHZtbGludXggL3Zhci9jcmFzaC8xMjcuMC4w
LjEtMjAxOS0wOS0xOS0wOFw6MzFcOjI3L3ZtY29yZQo+Pj4gV0FSTklORzoga2VybmVsIHJlbG9j
YXRlZCBbMjQwTUJdOiBwYXRjaGluZyA5NzExMCBnZGIgbWluaW1hbF9zeW1ib2wgdmFsdWVzCj4+
Pgo+Pj4gICAgICAgS0VSTkVMOiAvdmFyL2NyYXNoLzEyNy4wLjAuMS0yMDE5LTA5LTE5LTA4OjMx
OjI3L3ZtbGludXgKPj4+ICAgICBEVU1QRklMRTogL3Zhci9jcmFzaC8xMjcuMC4wLjEtMjAxOS0w
OS0xOS0wODozMToyNy92bWNvcmUgIFtQQVJUSUFMIERVTVBdCj4+PiAgICAgICAgIENQVVM6IDEy
OAo+Pj4gICAgICAgICBEQVRFOiBUaHUgU2VwIDE5IDA4OjMxOjE4IDIwMTkKPj4+ICAgICAgIFVQ
VElNRTogMDA6MDE6MjEKPj4+IExPQUQgQVZFUkFHRTogMC4xNiwgMC4wNywgMC4wMgo+Pj4gICAg
ICAgIFRBU0tTOiAxMzQzCj4+PiAgICAgTk9ERU5BTUU6IGFtZC1ldGhhbm9sCj4+PiAgICAgIFJF
TEVBU0U6IDUuMy4wLXJjNysKPj4+ICAgICAgVkVSU0lPTjogIzQgU01QIFRodSBTZXAgMTkgMDg6
MTQ6MDAgRURUIDIwMTkKPj4+ICAgICAgTUFDSElORTogeDg2XzY0ICAoMjE5NSBNaHopCj4+PiAg
ICAgICBNRU1PUlk6IDEyNy45IEdCCj4+PiAgICAgICAgUEFOSUM6ICJLZXJuZWwgcGFuaWMgLSBu
b3Qgc3luY2luZzogc3lzcnEgdHJpZ2dlcmVkIGNyYXNoIgo+Pj4gICAgICAgICAgUElEOiA5Nzg5
Cj4+PiAgICAgIENPTU1BTkQ6ICJiYXNoIgo+Pj4gICAgICAgICBUQVNLOiAiZmZmZjg5NzExODk0
YWU4MCAgW1RIUkVBRF9JTkZPOiBmZmZmODk3MTE4OTRhZTgwXSIKPj4+ICAgICAgICAgIENQVTog
ODMKPj4+ICAgICAgICBTVEFURTogVEFTS19SVU5OSU5HIChQQU5JQykKPj4+Cj4+PiBjcmFzaD4g
a21lbSAtc3xncmVwIC1pIGludmFsaWQKPj4+IGttZW06IGRtYS1rbWFsbG9jLTUxMjogc2xhYjpm
ZmZmZDc3NjgwMDAxYzAwIGludmFsaWQgZnJlZXBvaW50ZXI6YTYwODZhYzA5OWYwYzVhNAo+Pj4g
a21lbTogZG1hLWttYWxsb2MtNTEyOiBzbGFiOmZmZmZkNzc2ODAwMDFjMDAgaW52YWxpZCBmcmVl
cG9pbnRlcjphNjA4NmFjMDk5ZjBjNWE0Cj4+PiBjcmFzaD4KPj4+Cj4+PiBCVFc6IEkgYWxzbyB0
cmllZCB0byBmaXggdGhlIGFib3ZlIHByb2JsZW0gaW4gcHVyZ2F0b3J5KCksIGJ1dCB0aGVyZQo+
Pj4gYXJlIHRvbyBtYW55IHJlc3RyaWN0cyBpbiBwdXJnYXRvcnkoKSBjb250ZXh0LCBmb3IgZXhh
bXBsZTogaSBjYW4ndAo+Pj4gYWxsb2NhdGUgbmV3IG1lbW9yeSB0byBjcmVhdGUgdGhlIGlkZW50
aXR5IG1hcHBpbmcgcGFnZSB0YWJsZSBmb3IgU01FCj4+PiBzaXR1YXRpb24uCj4+Pgo+Pj4gQ3Vy
cmVudGx5LCB0aGVyZSBhcmUgdHdvIHBsYWNlcyB3aGVyZSB0aGUgZmlyc3QgNjQwayBhcmVhIGlz
IG5lZWRlZCwKPj4+IHRoZSBmaXJzdCBvbmUgaXMgaW4gdGhlIGZpbmRfdHJhbXBvbGluZV9wbGFj
ZW1lbnQoKSwgYW5vdGhlciBvbmUgaXMKPj4+IGluIHRoZSByZXNlcnZlX3JlYWxfbW9kZSgpLCBh
bmQgdGhlaXIgY29udGVudCBkb2Vzbid0IG1hdHRlci4gVG8gYXZvaWQKPj4+IHRoZSBhYm92ZSBl
cnJvciwgbGV0cyBvY2N1cHkgdGhlIHJlbWFpbiBtZW1vcnkgb2YgdGhlIGZpcnN0IDY0MGsgcmVn
aW9uCj4+PiAoZXhwZWN0IGZvciB0aGUgdHJhbXBvbGluZSBhbmQgcmVhbCBtb2RlKSBzbyB0aGF0
IHRoZSBhbGxvY2F0ZWQgbWVtb3J5Cj4+PiBkb2VzIG5vdCBmYWxsIGludG8gdGhlIGZpcnN0IDY0
MGsgYXJlYSB3aGVuIFNNRSBpcyBhY3RpdmUsIHdoaWNoIG1ha2VzCj4+PiB1cyBub3QgdG8gd29y
cnkgYWJvdXQgd2hldGhlciBrZXJuZWwgY2FuIGNvcnJlY3RseSBjb3B5IHRoZSBjb250ZW50cyBv
Zgo+Pj4gdGhlIGZpcnN0IDY0MGsgYXJlYSB0byBhIGJhY2t1cCByZWdpb24gaW4gdGhlIHB1cmdh
dG9yeSgpLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IExpYW5ibyBKaWFuZyA8bGlqaWFuZ0ByZWRo
YXQuY29tPgo+Pj4gLS0tCj4+PiBDaGFuZ2VzIHNpbmNlIHYxOgo+Pj4gMS4gSW1wcm92ZSBwYXRj
aCBsb2cKPj4+IDIuIENoYW5nZSB0aGUgY2hlY2tpbmcgY29uZGl0aW9uIGZyb20gc21lX2FjdGl2
ZSgpIHRvIHNtZV9hY3RpdmUoKQo+Pj4gICAgJiYgc3Ryc3RyKGJvb3RfY29tbWFuZF9saW5lLCAi
Y3Jhc2hrZXJuZWw9IikKPj4+Cj4+PiAgYXJjaC94ODYva2VybmVsL3NldHVwLmMgfCAzICsrKwo+
Pj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEv
YXJjaC94ODYva2VybmVsL3NldHVwLmMgYi9hcmNoL3g4Ni9rZXJuZWwvc2V0dXAuYwo+Pj4gaW5k
ZXggNzdlYTk2Yjc5NGJkLi5iZGIxYTAyYTg0ZmQgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL3g4Ni9r
ZXJuZWwvc2V0dXAuYwo+Pj4gKysrIGIvYXJjaC94ODYva2VybmVsL3NldHVwLmMKPj4+IEBAIC0x
MTQ4LDYgKzExNDgsOSBAQCB2b2lkIF9faW5pdCBzZXR1cF9hcmNoKGNoYXIgKipjbWRsaW5lX3Ap
Cj4+PiAgCj4+PiAgCXJlc2VydmVfcmVhbF9tb2RlKCk7Cj4+PiAgCj4+PiArCWlmIChzbWVfYWN0
aXZlKCkgJiYgc3Ryc3RyKGJvb3RfY29tbWFuZF9saW5lLCAiY3Jhc2hrZXJuZWw9IikpCj4+PiAr
CQltZW1ibG9ja19yZXNlcnZlKDAsIDY0MCoxMDI0KTsKPj4+ICsKPj4gCj4+IFNlZW1zIHlvdSBt
aXNzZWQgdGhlIGNvbW1lbnQgYWJvdXQgInVuY29uZGl0aW9uYWxseSBkbyBpdCIsIG9ubHkgY2hl
Y2sKPj4gY3Jhc2hrZXJuZWwgcGFyYW0gbG9va3MgYmV0dGVyLgo+PiAKPiBJZiBzbywgaXQgbWVh
bnMgdGhhdCBjb3B5aW5nIHRoZSBmaXJzdCA2NDBrIHRvIGEgYmFja3VwIHJlZ2lvbiBpcyBubyBs
b25nZXIgbmVlZGVkLCBhbmQKPiBpIHNob3VsZCBwb3N0IGEgcGF0Y2ggc2VyaWVzIHRvIHJlbW92
ZSB0aGUgY29weV9iYWNrdXBfcmVnaW9uKCkuIEFueSBpZGVhPwo+Cj4+IEFsc28gSSBub3RpY2Vk
IHJlc2VydmVfY3Jhc2hrZXJuZWwgaXMgY2FsbGVkIGFmdGVyIGluaXRtZW1faW5pdCwgSSdtIG5v
dAo+PiBzdXJlIGlmIG1lbWJsb2NrX3Jlc2VydmUgaXMgZ29vZCBlbm91Z2ggaW4gZWFybHkgY29k
ZSBiZWZvcmUKPj4gaW5pdG1lbV9pbml0LiAKPj4KPiBUaGUgZmlyc3QgemVybyBwYWdlIGFuZCBy
ZWFsIG1vZGUgYXJlIGFsc28gcmVzZXJ2ZWQgYmVmb3JlIHRoZSBpbml0bWVtX2luaXQoKSwKPiBh
bmQgc2VlbXMgdGhhdCB0aGV5IHdvcmsgd2VsbCB1bnRpbCBub3cuCj4KPiBUaGFua3MuCj4gTGlh
bmJvCgpUaGlzIGhhcyBvbmx5IGJlZW4gYm9vdCB0ZXN0ZWQgYnV0IEkgdGhpbmsgdGhpcyBpcyBh
Ym91dCB3aGF0IHdlIG5lZWQuCgpJIGZlZWwgbGlrZSBJIGhhdmVuJ3QgZm91bmQgYW5kIGRlbGV0
ZWQgYWxsIG9mIHRoZSBiYWNrdXAgcmVnaW9uIGNvZGUuCgpJIHRoaW5rIGl0IGlzIGltcG9ydGFu
dCB0byBoYXZlIHRoZSByZXNlcnZhdGlvbiBjb2RlIGluIHJlc2V2ZV9yZWFsX21vZGUKYXMgdGhl
IGxvZ2ljIGlzIGZ1bmRhbWVudGFsbHkgaW50ZXJ0d2luZWQuCgpFcmljCgoKRnJvbTogIkVyaWMg
Vy4gQmllZGVybWFuIiA8ZWJpZWRlcm1AeG1pc3Npb24uY29tPgpEYXRlOiBNb24sIDcgT2N0IDIw
MTkgMTE6NTc6MjQgLTA1MDAKU3ViamVjdDogW1BBVENIXSB4ODYva2V4ZWM6IEFsd2F5cyByZXNl
cnZlIHRoZSBsb3cgMU1pQgoKV2hlbiB0aGUgY3Jhc2hrZXJuZWwga2VybmVsIGNvbW1hbmQgbGlu
ZSBvcHRpb24gaXMgc3BlY2lmaWVkIGFsd2F5cwpyZXNlcnZlIHRoZSBsb3cgMU1pQi4gICAgVGhh
dCB3YXkgaXQgZG9lcyBub3QgbmVlZCB0byBiZSBpbmNsdWRlZAppbiBjcmFzaCBkdW1wcyBvciB1
c2VkIGZvciBhbnl0aGluZyBleGVjZXB0IHRoZSBwcm9jZXNzb3IgdHJhbXBvbGluZXMKdGhhdCBt
dXN0IGxpdmUgaW4gdGhlIGxvdyAxTWlCLgoKVGhlIGN1cnJlbnQgaGFuZGxpbmcgb2YgY29weWlu
ZyB0aGUgbG93IDFNaUIgcnVucyBpbnRvIHByb2JsZW1zIHdoZW4KU01FIGlzIGFjdGl2ZS4gIFNv
IGp1c3Qgc2ltcGxpZnkgZXZlcnl0aGluZyBhbmQgbWFrZSBpdCB1bm5lY2Vzc2FyeQp0byBkbyBh
bnl0aGluZyB3aXRoIHRoZSBsb3cgMU1pQi4KClRoaXMgY29tZXMgYXQgYSBjb3N0IG9mIDY0MEtp
Qi4gIEJ1dCB3aGVuIGNyYXNoIGtlcm5lbHMgbmVlZCAzMk1pQiBvcgptb3JlIHRvIHJ1biB0aGlz
IGlzbid0IG11Y2ggbW9yZSwgYW5kIGl0IG1ha2VzIGV2ZXJ5dGhpbmcgbXVjaCBtb3JlCnJlbGlh
YmxlLgoKU2lnbmVkLW9mZi1ieTogIkVyaWMgVy4gQmllZGVybWFuIiA8ZWJpZWRlcm1AeG1pc3Np
b24uY29tPgotLS0KIGFyY2gveDg2L2luY2x1ZGUvYXNtL2tleGVjLmggICB8ICA0IC0tLS0KIGFy
Y2gveDg2L2tlcm5lbC9jcmFzaC5jICAgICAgICB8IDE5IC0tLS0tLS0tLS0tLS0tLS0tLS0KIGFy
Y2gveDg2L3B1cmdhdG9yeS9wdXJnYXRvcnkuYyB8IDE1IC0tLS0tLS0tLS0tLS0tLQogYXJjaC94
ODYvcmVhbG1vZGUvaW5pdC5jICAgICAgIHwgMTAgKysrKysrKysrKwogNCBmaWxlcyBjaGFuZ2Vk
LCAxMCBpbnNlcnRpb25zKCspLCAzOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL3g4
Ni9pbmNsdWRlL2FzbS9rZXhlYy5oIGIvYXJjaC94ODYvaW5jbHVkZS9hc20va2V4ZWMuaAppbmRl
eCA1ZTdkNmI0NmRlOTcuLmUzNjMwN2FjMzI0ZCAxMDA2NDQKLS0tIGEvYXJjaC94ODYvaW5jbHVk
ZS9hc20va2V4ZWMuaAorKysgYi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9rZXhlYy5oCkBAIC02Niwx
MCArNjYsNiBAQCBzdHJ1Y3Qga2ltYWdlOwogIyBkZWZpbmUgS0VYRUNfQVJDSCBLRVhFQ19BUkNI
X1g4Nl82NAogI2VuZGlmCiAKLS8qIE1lbW9yeSB0byBiYWNrdXAgZHVyaW5nIGNyYXNoIGtkdW1w
ICovCi0jZGVmaW5lIEtFWEVDX0JBQ0tVUF9TUkNfU1RBUlQJKDBVTCkKLSNkZWZpbmUgS0VYRUNf
QkFDS1VQX1NSQ19FTkQJKDY0MCAqIDEwMjRVTCAtIDEpCS8qIDY0MEsgKi8KLQogLyoKICAqIFRo
aXMgZnVuY3Rpb24gaXMgcmVzcG9uc2libGUgZm9yIGNhcHR1cmluZyByZWdpc3RlciBzdGF0ZXMg
aWYgY29taW5nCiAgKiB2aWEgcGFuaWMgb3RoZXJ3aXNlIGp1c3QgZml4IHVwIHRoZSBzcyBhbmQg
c3AgaWYgY29taW5nIHZpYSBrZXJuZWwKZGlmZiAtLWdpdCBhL2FyY2gveDg2L2tlcm5lbC9jcmFz
aC5jIGIvYXJjaC94ODYva2VybmVsL2NyYXNoLmMKaW5kZXggZWI2NTFmYmRlOTJhLi5kYzQ3NzNk
MmY0YTYgMTAwNjQ0Ci0tLSBhL2FyY2gveDg2L2tlcm5lbC9jcmFzaC5jCisrKyBiL2FyY2gveDg2
L2tlcm5lbC9jcmFzaC5jCkBAIC00MDksMzEgKzQwOSwxMiBAQCBpbnQgY3Jhc2hfc2V0dXBfbWVt
bWFwX2VudHJpZXMoc3RydWN0IGtpbWFnZSAqaW1hZ2UsIHN0cnVjdCBib290X3BhcmFtcyAqcGFy
YW1zKQogCXJldHVybiByZXQ7CiB9CiAKLXN0YXRpYyBpbnQgZGV0ZXJtaW5lX2JhY2t1cF9yZWdp
b24oc3RydWN0IHJlc291cmNlICpyZXMsIHZvaWQgKmFyZykKLXsKLQlzdHJ1Y3Qga2ltYWdlICpp
bWFnZSA9IGFyZzsKLQotCWltYWdlLT5hcmNoLmJhY2t1cF9zcmNfc3RhcnQgPSByZXMtPnN0YXJ0
OwotCWltYWdlLT5hcmNoLmJhY2t1cF9zcmNfc3ogPSByZXNvdXJjZV9zaXplKHJlcyk7Ci0KLQkv
KiBFeHBlY3Rpbmcgb25seSBvbmUgcmFuZ2UgZm9yIGJhY2t1cCByZWdpb24gKi8KLQlyZXR1cm4g
MTsKLX0KLQogaW50IGNyYXNoX2xvYWRfc2VnbWVudHMoc3RydWN0IGtpbWFnZSAqaW1hZ2UpCiB7
CiAJaW50IHJldDsKIAlzdHJ1Y3Qga2V4ZWNfYnVmIGtidWYgPSB7IC5pbWFnZSA9IGltYWdlLCAu
YnVmX21pbiA9IDAsCiAJCQkJICAuYnVmX21heCA9IFVMT05HX01BWCwgLnRvcF9kb3duID0gZmFs
c2UgfTsKIAotCS8qCi0JICogRGV0ZXJtaW5lIGFuZCBsb2FkIGEgc2VnbWVudCBmb3IgYmFja3Vw
IGFyZWEuIEZpcnN0IDY0MEsgUkFNCi0JICogcmVnaW9uIGlzIGJhY2t1cCBzb3VyY2UKLQkgKi8K
LQotCXJldCA9IHdhbGtfc3lzdGVtX3JhbV9yZXMoS0VYRUNfQkFDS1VQX1NSQ19TVEFSVCwgS0VY
RUNfQkFDS1VQX1NSQ19FTkQsCi0JCQkJaW1hZ2UsIGRldGVybWluZV9iYWNrdXBfcmVnaW9uKTsK
LQogCS8qIFplcm8gb3IgcG9zdGl2ZSByZXR1cm4gdmFsdWVzIGFyZSBvayAqLwogCWlmIChyZXQg
PCAwKQogCQlyZXR1cm4gcmV0OwpkaWZmIC0tZ2l0IGEvYXJjaC94ODYvcHVyZ2F0b3J5L3B1cmdh
dG9yeS5jIGIvYXJjaC94ODYvcHVyZ2F0b3J5L3B1cmdhdG9yeS5jCmluZGV4IDNiOTU0MTBmZjBm
OC4uNDQ4ZGUwNDcwM2JhIDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9wdXJnYXRvcnkvcHVyZ2F0b3J5
LmMKKysrIGIvYXJjaC94ODYvcHVyZ2F0b3J5L3B1cmdhdG9yeS5jCkBAIC0yMiwyMCArMjIsNiBA
QCB1OCBwdXJnYXRvcnlfc2hhMjU2X2RpZ2VzdFtTSEEyNTZfRElHRVNUX1NJWkVdIF9fc2VjdGlv
bigua2V4ZWMtcHVyZ2F0b3J5KTsKIAogc3RydWN0IGtleGVjX3NoYV9yZWdpb24gcHVyZ2F0b3J5
X3NoYV9yZWdpb25zW0tFWEVDX1NFR01FTlRfTUFYXSBfX3NlY3Rpb24oLmtleGVjLXB1cmdhdG9y
eSk7CiAKLS8qCi0gKiBPbiB4ODYsIHNlY29uZCBrZXJuZWwgcmVxdXJpZXMgZmlyc3QgNjQwSyBv
ZiBtZW1vcnkgdG8gYm9vdC4gQ29weQotICogZmlyc3QgNjQwSyB0byBhIGJhY2t1cCByZWdpb24g
aW4gcmVzZXJ2ZWQgbWVtb3J5IHJhbmdlIHNvIHRoYXQgc2Vjb25kCi0gKiBrZXJuZWwgY2FuIHVz
ZSBmaXJzdCA2NDBLLgotICovCi1zdGF0aWMgaW50IGNvcHlfYmFja3VwX3JlZ2lvbih2b2lkKQot
ewotCWlmIChwdXJnYXRvcnlfYmFja3VwX2Rlc3QpIHsKLQkJbWVtY3B5KCh2b2lkICopcHVyZ2F0
b3J5X2JhY2t1cF9kZXN0LAotCQkgICAgICAgKHZvaWQgKilwdXJnYXRvcnlfYmFja3VwX3NyYywg
cHVyZ2F0b3J5X2JhY2t1cF9zeik7Ci0JfQotCXJldHVybiAwOwotfQotCiBzdGF0aWMgaW50IHZl
cmlmeV9zaGEyNTZfZGlnZXN0KHZvaWQpCiB7CiAJc3RydWN0IGtleGVjX3NoYV9yZWdpb24gKnB0
ciwgKmVuZDsKQEAgLTY2LDcgKzUyLDYgQEAgdm9pZCBwdXJnYXRvcnkodm9pZCkKIAkJZm9yICg7
OykKIAkJCTsKIAl9Ci0JY29weV9iYWNrdXBfcmVnaW9uKCk7CiB9CiAKIC8qCmRpZmYgLS1naXQg
YS9hcmNoL3g4Ni9yZWFsbW9kZS9pbml0LmMgYi9hcmNoL3g4Ni9yZWFsbW9kZS9pbml0LmMKaW5k
ZXggN2RjZTM5YzhjMDM0Li43NmM2ODBhZDIzYTEgMTAwNjQ0Ci0tLSBhL2FyY2gveDg2L3JlYWxt
b2RlL2luaXQuYworKysgYi9hcmNoL3g4Ni9yZWFsbW9kZS9pbml0LmMKQEAgLTM0LDYgKzM0LDE2
IEBAIHZvaWQgX19pbml0IHJlc2VydmVfcmVhbF9tb2RlKHZvaWQpCiAKIAltZW1ibG9ja19yZXNl
cnZlKG1lbSwgc2l6ZSk7CiAJc2V0X3JlYWxfbW9kZV9tZW0obWVtKTsKKworI2lmZGVmIENPTkZJ
R19LRVhFQ19DT1JFCisJLyogV2hlbiBjcmFzaGtlcm5lbCBpcyBzcGVjaWZpZWQgb25seSB1c2Ug
dGhlIGxvdyAxTWlCIGZvciB0aGUKKwkgKiByZWFsIG1vZGUgdHJhbXBvbGluZXMuCisJICovCisJ
aWYgKHN0cnN0cihib290X2NvbW1hbmRfbGluZSwgImNyYXNoa2VybmVsPSIpKSB7CisJCW1lbWJs
b2NrX3Jlc2VydmUoMCwgMTw8MjApOworCQlwcl9pbmZvKCJSZXNlcnZpbmcgbG93IDFNaUIgb2Yg
bWVtb3J5IGZvciBjcmFzaGtlcm5lbFxuIik7CisJfQorI2VuZGlmIC8qIENPTkZJR19LRVhFQ19D
T1JFICovCiB9CiAKIHN0YXRpYyB2b2lkIF9faW5pdCBzZXR1cF9yZWFsX21vZGUodm9pZCkKLS0g
CjIuMjAuMQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
