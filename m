Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD661EBE55
	for <lists+kexec@lfdr.de>; Tue,  2 Jun 2020 16:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D1DmsK8002diNfUdIQ4cSecWFpxoCV4yJdOX0Bbk49k=; b=kvwCNiLzv1e0oU
	Maq82j/y9aZuhYEPxGrFw1c9fsSYJC2sIjetWgcjo/T9r04k35LgSFBMxKW/6LogKkVwIqJEBfjcX
	Cos48OtuhQKWaywwgawD8YPIU8Rl5bql8b0Helt27VVvva2eoXCCPoZVOXcBIhjt5aixMDuxeW1u3
	31jxrCobk91tJur+zPAz9iqk9km7CjwcNhYPbcXAwWLDJ/C7q4gd+0aWZNeKPXxELUCbng36hQ1gG
	eF5JuX7fZID33Gj9SoYbCoMv1VRUcXmvWVxxqHD3nHQJjHrxV4gOEzuomTz13Gijzf6tOBZxVxJ6/
	zvw1ruDJ3hTUGUnNhT5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg87m-0003zp-Mb; Tue, 02 Jun 2020 14:42:42 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg87i-0003zF-IC; Tue, 02 Jun 2020 14:42:41 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052EfvdT009136;
 Tue, 2 Jun 2020 14:42:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2020-01-29; bh=f27y03fv745c02yIbYexRAAwPCBiWvLJPcvvXS3z+xM=;
 b=EH0abBKqZG1gX4ZmZVAkyesz9yZtGV/Wxw+m8+aVic6drI2msG3P3lWpaymd+PGaLLin
 Js91irIvCtJJCH8Jb2BYC0nQyQsrbJCOTEoBIIjLMb9PBhj0a20r69IyI5sPxrXZGRDX
 CwZhHmWoblfiPbn7cH6Rnp35fbOR3L38RfTtjuNSOUYb9zmtN2vK93BEPyFBVDhNAsjK
 Io8dMBxCHZq0pIaZ1x+9Eldka0ks9kKAAz/gm5+QtGc1uL39wOzR40FyRkneU96Qdc2g
 F13UHMwD2v4fwSTnVicwjGX4ghqWPwHDfI8m0uI1ZcQoFkOo3GZLE8jDfgY3041XDAdF 3w== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 31bewqvfwm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 02 Jun 2020 14:42:10 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052EXHBY038281;
 Tue, 2 Jun 2020 14:42:09 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 31c1dxbhwn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Jun 2020 14:42:09 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 052Eg0sC006406;
 Tue, 2 Jun 2020 14:42:00 GMT
Received: from dhcp-10-154-181-125.vpn.oracle.com (/10.154.181.125)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Jun 2020 07:42:00 -0700
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v8 0/5] support reserving crashkernel above 4G on arm64
 kdump
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <CAJ2QiJJE-jeRL1HPUZCwi1LtV9CBMmYrsOaS6vX1R1sJ6Z1t8g@mail.gmail.com>
Date: Tue, 2 Jun 2020 09:41:58 -0500
Message-Id: <6EA47B07-5119-49DF-9980-12A2066F22CA@oracle.com>
References: <20200521093805.64398-1-chenzhou10@huawei.com>
 <CAJ2QiJ+1Hj2OQzpR5CfvLGMfTTbXAST94hsbfm0VcDmJKV3WTw@mail.gmail.com>
 <303695cc-d3ea-9f51-1489-07d27d4253d4@oracle.com>
 <CACi5LpOZzdfEKUYAfYxtgeUbk9K6YFVUKLaGS8XoS0kForjH9A@mail.gmail.com>
 <F64A309C-B9C0-45F2-A50D-D677005C33A6@oracle.com>
 <CAJ2QiJJE-jeRL1HPUZCwi1LtV9CBMmYrsOaS6vX1R1sJ6Z1t8g@mail.gmail.com>
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxlogscore=999
 spamscore=0 bulkscore=0 adultscore=0 suspectscore=1 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006020104
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 bulkscore=0
 phishscore=0 suspectscore=1 impostorscore=0 cotscore=-2147483648
 lowpriorityscore=0 mlxscore=0 adultscore=0 spamscore=0 mlxlogscore=999
 malwarescore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006020105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_074238_807664_7B6973D9 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Devicetree List <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Baoquan He <bhe@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Chen Zhou <chenzhou10@huawei.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, RuiRui Yang <dyoung@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Simon Horman <horms@verge.net.au>,
 James Morse <james.morse@arm.com>, guohanjun@huawei.com,
 Thomas Gleixner <tglx@linutronix.de>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Cgo+IE9uIEp1biAyLCAyMDIwLCBhdCAxMjozOCBBTSwgUHJhYmhha2FyIEt1c2h3YWhhIDxwcmFi
aGFrYXIucGtpbkBnbWFpbC5jb20+IHdyb3RlOgo+IAo+IE9uIFR1ZSwgSnVuIDIsIDIwMjAgYXQg
MzoyOSBBTSBKb2huIERvbm5lbGx5IDxqb2huLnAuZG9ubmVsbHlAb3JhY2xlLmNvbT4gd3JvdGU6
Cj4+IAo+PiBIaSAuICBTZWUgYmVsb3cgIQo+PiAKPj4+IE9uIEp1biAxLCAyMDIwLCBhdCA0OjAy
IFBNLCBCaHVwZXNoIFNoYXJtYSA8YmhzaGFybWFAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+PiAKPj4+
IEhpIEpvaG4sCj4+PiAKPj4+IE9uIFR1ZSwgSnVuIDIsIDIwMjAgYXQgMTowMSBBTSBKb2huIERv
bm5lbGx5IDxKb2huLlAuZG9ubmVsbHlAb3JhY2xlLmNvbT4gd3JvdGU6Cj4+Pj4gCj4+Pj4gSGks
Cj4+Pj4gCj4+Pj4gCj4+Pj4gT24gNi8xLzIwIDc6MDIgQU0sIFByYWJoYWthciBLdXNod2FoYSB3
cm90ZToKPj4+Pj4gSGkgQ2hlbiwKPj4+Pj4gCj4+Pj4+IE9uIFRodSwgTWF5IDIxLCAyMDIwIGF0
IDM6MDUgUE0gQ2hlbiBaaG91IDxjaGVuemhvdTEwQGh1YXdlaS5jb20+IHdyb3RlOgo+Pj4+Pj4g
VGhpcyBwYXRjaCBzZXJpZXMgZW5hYmxlIHJlc2VydmluZyBjcmFzaGtlcm5lbCBhYm92ZSA0RyBp
biBhcm02NC4KPj4+Pj4+IAo+Pj4+Pj4gVGhlcmUgYXJlIGZvbGxvd2luZyBpc3N1ZXMgaW4gYXJt
NjQga2R1bXA6Cj4+Pj4+PiAxLiBXZSB1c2UgY3Jhc2hrZXJuZWw9WCB0byByZXNlcnZlIGNyYXNo
a2VybmVsIGJlbG93IDRHLCB3aGljaCB3aWxsIGZhaWwKPj4+Pj4+IHdoZW4gdGhlcmUgaXMgbm8g
ZW5vdWdoIGxvdyBtZW1vcnkuCj4+Pj4+PiAyLiBDdXJyZW50bHksIGNyYXNoa2VybmVsPVlAWCBj
YW4gYmUgdXNlZCB0byByZXNlcnZlIGNyYXNoa2VybmVsIGFib3ZlIDRHLAo+Pj4+Pj4gaW4gdGhp
cyBjYXNlLCBpZiBzd2lvdGxiIG9yIERNQSBidWZmZXJzIGFyZSByZXF1aXJlZCwgY3Jhc2ggZHVt
cCBrZXJuZWwKPj4+Pj4+IHdpbGwgYm9vdCBmYWlsdXJlIGJlY2F1c2UgdGhlcmUgaXMgbm8gbG93
IG1lbW9yeSBhdmFpbGFibGUgZm9yIGFsbG9jYXRpb24uCj4+Pj4+PiAKPj4+Pj4+IFRvIHNvbHZl
IHRoZXNlIGlzc3VlcywgaW50cm9kdWNlIGNyYXNoa2VybmVsPVgsbG93IHRvIHJlc2VydmUgc3Bl
Y2lmaWVkCj4+Pj4+PiBzaXplIGxvdyBtZW1vcnkuCj4+Pj4+PiBDcmFzaGtlcm5lbD1YIHRyaWVz
IHRvIHJlc2VydmUgbWVtb3J5IGZvciB0aGUgY3Jhc2ggZHVtcCBrZXJuZWwgdW5kZXIKPj4+Pj4+
IDRHLiBJZiBjcmFzaGtlcm5lbD1ZLGxvdyBpcyBzcGVjaWZpZWQgc2ltdWx0YW5lb3VzbHksIHJl
c2VydmUgc3BjaWZpZWQKPj4+Pj4+IHNpemUgbG93IG1lbW9yeSBmb3IgY3Jhc2gga2R1bXAga2Vy
bmVsIGRldmljZXMgZmlyc3RseSBhbmQgdGhlbiByZXNlcnZlCj4+Pj4+PiBtZW1vcnkgYWJvdmUg
NEcuCj4+Pj4+PiAKPj4+Pj4+IFdoZW4gY3Jhc2hrZXJuZWwgaXMgcmVzZXJ2ZWQgYWJvdmUgNEcg
aW4gbWVtb3J5LCB0aGF0IGlzLCBjcmFzaGtlcm5lbD1YLGxvdwo+Pj4+Pj4gaXMgc3BlY2lmaWVk
IHNpbXVsdGFuZW91c2x5LCBrZXJuZWwgc2hvdWxkIHJlc2VydmUgc3BlY2lmaWVkIHNpemUgbG93
IG1lbW9yeQo+Pj4+Pj4gZm9yIGNyYXNoIGR1bXAga2VybmVsIGRldmljZXMuIFNvIHRoZXJlIG1h
eSBiZSB0d28gY3Jhc2gga2VybmVsIHJlZ2lvbnMsIG9uZQo+Pj4+Pj4gaXMgYmVsb3cgNEcsIHRo
ZSBvdGhlciBpcyBhYm92ZSA0Ry4KPj4+Pj4+IEluIG9yZGVyIHRvIGRpc3RpbmN0IGZyb20gdGhl
IGhpZ2ggcmVnaW9uIGFuZCBtYWtlIG5vIGVmZmVjdCB0byB0aGUgdXNlIG9mCj4+Pj4+PiBrZXhl
Yy10b29scywgcmVuYW1lIHRoZSBsb3cgcmVnaW9uIGFzICJDcmFzaCBrZXJuZWwgKGxvdykiLCBh
bmQgYWRkIERUIHByb3BlcnR5Cj4+Pj4+PiAibGludXgsbG93LW1lbW9yeS1yYW5nZSIgdG8gY3Jh
c2ggZHVtcCBrZXJuZWwncyBkdGIgdG8gcGFzcyB0aGUgbG93IHJlZ2lvbi4KPj4+Pj4+IAo+Pj4+
Pj4gQmVzaWRlcywgd2UgbmVlZCB0byBtb2RpZnkga2V4ZWMtdG9vbHM6Cj4+Pj4+PiBhcm02NDog
a2R1bXA6IGFkZCBhbm90aGVyIERUIHByb3BlcnR5IHRvIGNyYXNoIGR1bXAga2VybmVsJ3MgZHRi
KHNlZSBbMV0pCj4+Pj4+PiAKPj4+Pj4+IFRoZSBwcmV2aW91cyBjaGFuZ2VzIGFuZCBkaXNjdXNz
aW9ucyBjYW4gYmUgcmV0cmlldmVkIGZyb206Cj4+Pj4+PiAKPj4+Pj4+IENoYW5nZXMgc2luY2Ug
W3Y3XQo+Pj4+Pj4gLSBNb3ZlIHg4NiBDUkFTSF9BTElHTiB0byAyTQo+Pj4+Pj4gU3VnZ2VzdGVk
IGJ5IERhdmUgYW5kIGRvIHNvbWUgdGVzdCwgbW92ZSB4ODYgQ1JBU0hfQUxJR04gdG8gMk0uCj4+
Pj4+PiAtIFVwZGF0ZSBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2hvc2VuLnR4
dAo+Pj4+Pj4gQWRkIGNvcnJlc3BvbmRpbmcgZG9jdW1lbnRhdGlvbiB0byBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvY2hvc2VuLnR4dCBzdWdnZXN0ZWQgYnkgQXJuZC4KPj4+Pj4+
IC0gQWRkIFRlc3RlZC1ieSBmcm9tIEpob24gYW5kIHBrCj4+Pj4+PiAKPj4+Pj4+IENoYW5nZXMg
c2luY2UgW3Y2XQo+Pj4+Pj4gLSBGaXggYnVpbGQgZXJyb3JzIHJlcG9ydGVkIGJ5IGtidWlsZCB0
ZXN0IHJvYm90Lgo+Pj4+Pj4gCj4+Pj4+PiBDaGFuZ2VzIHNpbmNlIFt2NV0KPj4+Pj4+IC0gTW92
ZSByZXNlcnZlX2NyYXNoa2VybmVsX2xvdygpIGludG8ga2VybmVsL2NyYXNoX2NvcmUuYy4KPj4+
Pj4+IC0gRGVsZXRlIGNyYXNoa2VybmVsPVgsaGlnaC4KPj4+Pj4+IC0gTW9kaWZ5IGNyYXNoa2Vy
bmVsPVgsbG93Lgo+Pj4+Pj4gSWYgY3Jhc2hrZXJuZWw9WCxsb3cgaXMgc3BlY2lmaWVkIHNpbXVs
dGFuZW91c2x5LCByZXNlcnZlIHNwY2lmaWVkIHNpemUgbG93Cj4+Pj4+PiBtZW1vcnkgZm9yIGNy
YXNoIGtkdW1wIGtlcm5lbCBkZXZpY2VzIGZpcnN0bHkgYW5kIHRoZW4gcmVzZXJ2ZSBtZW1vcnkg
YWJvdmUgNEcuCj4+Pj4+PiBJbiBhZGRpdGlvbiwgcmVuYW1lIGNyYXNoa19sb3dfcmVzIGFzICJD
cmFzaCBrZXJuZWwgKGxvdykiIGZvciBhcm02NCwgYW5kIHRoZW4KPj4+Pj4+IHBhc3MgdG8gY3Jh
c2ggZHVtcCBrZXJuZWwgYnkgRFQgcHJvcGVydHkgImxpbnV4LGxvdy1tZW1vcnktcmFuZ2UiLgo+
Pj4+Pj4gLSBVcGRhdGUgRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9rZHVtcC9rZHVtcC5yc3Qu
Cj4+Pj4+PiAKPj4+Pj4+IENoYW5nZXMgc2luY2UgW3Y0XQo+Pj4+Pj4gLSBSZWltcGxlbWVudCBt
ZW1ibG9ja19jYXBfbWVtb3J5X3JhbmdlcyBmb3IgbXVsdGlwbGUgcmFuZ2VzIGJ5IE1pa2UuCj4+
Pj4+PiAKPj4+Pj4+IENoYW5nZXMgc2luY2UgW3YzXQo+Pj4+Pj4gLSBBZGQgbWVtYmxvY2tfY2Fw
X21lbW9yeV9yYW5nZXMgYmFjayBmb3IgbXVsdGlwbGUgcmFuZ2VzLgo+Pj4+Pj4gLSBGaXggc29t
ZSBjb21waWxpbmcgd2FybmluZ3MuCj4+Pj4+PiAKPj4+Pj4+IENoYW5nZXMgc2luY2UgW3YyXQo+
Pj4+Pj4gLSBTcGxpdCBwYXRjaCAiYXJtNjQ6IGtkdW1wOiBzdXBwb3J0IHJlc2VydmluZyBjcmFz
aGtlcm5lbCBhYm92ZSA0RyIgYXMKPj4+Pj4+IHR3by4gUHV0ICJtb3ZlIHJlc2VydmVfY3Jhc2hr
ZXJuZWxfbG93KCkgaW50byBrZXhlY19jb3JlLmMiIGluIGEgc2VwYXJhdGUKPj4+Pj4+IHBhdGNo
Lgo+Pj4+Pj4gCj4+Pj4+PiBDaGFuZ2VzIHNpbmNlIFt2MV06Cj4+Pj4+PiAtIE1vdmUgY29tbW9u
IHJlc2VydmVfY3Jhc2hrZXJuZWxfbG93KCkgY29kZSBpbnRvIGtlcm5lbC9rZXhlY19jb3JlLmMu
Cj4+Pj4+PiAtIFJlbW92ZSBtZW1ibG9ja19jYXBfbWVtb3J5X3JhbmdlcygpIGkgYWRkZWQgaW4g
djEgYW5kIGltcGxlbWVudCB0aGF0Cj4+Pj4+PiBpbiBmZHRfZW5mb3JjZV9tZW1vcnlfcmVnaW9u
KCkuCj4+Pj4+PiBUaGVyZSBhcmUgYXQgbW9zdCB0d28gY3Jhc2gga2VybmVsIHJlZ2lvbnMsIGZv
ciB0d28gY3Jhc2gga2VybmVsIHJlZ2lvbnMKPj4+Pj4+IGNhc2UsIHdlIGNhcCB0aGUgbWVtb3J5
IHJhbmdlIFttaW4ocmVnc1sqXS5zdGFydCksIG1heChyZWdzWypdLmVuZCldCj4+Pj4+PiBhbmQg
dGhlbiByZW1vdmUgdGhlIG1lbW9yeSByYW5nZSBpbiB0aGUgbWlkZGxlLgo+Pj4+Pj4gCj4+Pj4+
PiBbMV06IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9waXBlcm1haWwva2V4ZWMvMjAyMC1NYXkvMDI1MTI4Lmh0bWxfXzshIUdxaXZQVmE3QnJp
byFMblRTQVJrQ3QwVjBGb3pSMEttcW9vYUg1QUR0ZFh2czNtUGRQM0tSVnFBTG12U0syVm1Da0lQ
SWhzYXhidnBuMXVNMSQKPj4+Pj4+IFt2MV06IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19o
dHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS80LzIvMTE3NF9fOyEhR3FpdlBWYTdCcmlvIUxuVFNB
UmtDdDBWMEZvelIwS21xb29hSDVBRHRkWHZzM21QZFAzS1JWcUFMbXZTSzJWbUNrSVBJaHNheGJ0
MHhOOVBFJAo+Pj4+Pj4gW3YyXTogaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8v
bGttbC5vcmcvbGttbC8yMDE5LzQvOS84Nl9fOyEhR3FpdlBWYTdCcmlvIUxuVFNBUmtDdDBWMEZv
elIwS21xb29hSDVBRHRkWHZzM21QZFAzS1JWcUFMbXZTSzJWbUNrSVBJaHNheGJ1Yjd5VVFIJAo+
Pj4+Pj4gW3YzXTogaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vbGttbC5vcmcv
bGttbC8yMDE5LzQvOS8zMDZfXzshIUdxaXZQVmE3QnJpbyFMblRTQVJrQ3QwVjBGb3pSMEttcW9v
YUg1QUR0ZFh2czNtUGRQM0tSVnFBTG12U0syVm1Da0lQSWhzYXhibmM0elBQViQKPj4+Pj4+IFt2
NF06IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL2xrbWwub3JnL2xrbWwvMjAx
OS80LzE1LzI3M19fOyEhR3FpdlBWYTdCcmlvIUxuVFNBUmtDdDBWMEZvelIwS21xb29hSDVBRHRk
WHZzM21QZFAzS1JWcUFMbXZTSzJWbUNrSVBJaHNheGJ2c0FzWkx1JAo+Pj4+Pj4gW3Y1XTogaHR0
cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzUvNi8x
MzYwX187ISFHcWl2UFZhN0JyaW8hTG5UU0FSa0N0MFYwRm96UjBLbXFvb2FINUFEdGRYdnMzbVBk
UDNLUlZxQUxtdlNLMlZtQ2tJUEloc2F4YmwyNG4tNzkkCj4+Pj4+PiBbdjZdOiBodHRwczovL3Vy
bGRlZmVuc2UuY29tL3YzL19faHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvOC8zMC8xNDJfXzsh
IUdxaXZQVmE3QnJpbyFMblRTQVJrQ3QwVjBGb3pSMEttcW9vYUg1QUR0ZFh2czNtUGRQM0tSVnFB
TG12U0syVm1Da0lQSWhzYXhiczdyOEcyYSQKPj4+Pj4+IFt2N106IGh0dHBzOi8vdXJsZGVmZW5z
ZS5jb20vdjMvX19odHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS8xMi8yMy80MTFfXzshIUdxaXZQ
VmE3QnJpbyFMblRTQVJrQ3QwVjBGb3pSMEttcW9vYUg1QUR0ZFh2czNtUGRQM0tSVnFBTG12U0sy
Vm1Da0lQSWhzYXhiaUZVSDkwRyQKPj4+Pj4+IAo+Pj4+Pj4gQ2hlbiBaaG91ICg1KToKPj4+Pj4+
ICB4ODY6IGtkdW1wOiBtb3ZlIHJlc2VydmVfY3Jhc2hrZXJuZWxfbG93KCkgaW50byBjcmFzaF9j
b3JlLmMKPj4+Pj4+ICBhcm02NDoga2R1bXA6IHJlc2VydmUgY3Jhc2hrZW5lbCBhYm92ZSA0RyBm
b3IgY3Jhc2ggZHVtcCBrZXJuZWwKPj4+Pj4+ICBhcm02NDoga2R1bXA6IGFkZCBtZW1vcnkgZm9y
IGRldmljZXMgYnkgRFQgcHJvcGVydHksIGxvdy1tZW1vcnktcmFuZ2UKPj4+Pj4+ICBrZHVtcDog
dXBkYXRlIERvY3VtZW50YXRpb24gYWJvdXQgY3Jhc2hrZXJuZWwgb24gYXJtNjQKPj4+Pj4+ICBk
dC1iaW5kaW5nczogY2hvc2VuOiBEb2N1bWVudCBsaW51eCxsb3ctbWVtb3J5LXJhbmdlIGZvciBh
cm02NCBrZHVtcAo+Pj4+Pj4gCj4+Pj4+IFdlIGFyZSBnZXR0aW5nICJ3YXJuX2FsbG9jIiBbMV0g
d2FybmluZyBkdXJpbmcgYm9vdCBvZiBrZHVtcCBrZXJuZWwKPj4+Pj4gd2l0aCBib290YXJncyBh
cyBbMl0gb2YgcHJpbWFyeSBrZXJuZWwuCj4+Pj4+IFRoaXMgZXJyb3Igb2JzZXJ2ZWQgb24gVGh1
bmRlclgyICBBUk02NCBwbGF0Zm9ybS4KPj4+Pj4gCj4+Pj4+IEl0IGlzIG9ic2VydmVkIHdpdGgg
bGF0ZXN0IHVwc3RyZWFtIHRhZyAodjUuNy1yYzMpIHdpdGggdGhpcyBwYXRjaCBzZXQKPj4+Pj4g
YW5kIGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvcGlwZXJtYWlsL2tleGVjLzIwMjAtTWF5LzAyNTEyOC5odG1sX187ISFHcWl2UFZhN0JyaW8h
TG5UU0FSa0N0MFYwRm96UjBLbXFvb2FINUFEdGRYdnMzbVBkUDNLUlZxQUxtdlNLMlZtQ2tJUElo
c2F4YmlJQUFsenUkCj4+Pj4+IEFsc28gKip3aXRob3V0KiogdGhpcyBwYXRjaC1zZXQKPj4+Pj4g
Imh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0
cy9hcm0ta2VybmVsL21zZzgwNjg4Mi5odG1sX187ISFHcWl2UFZhN0JyaW8hTG5UU0FSa0N0MFYw
Rm96UjBLbXFvb2FINUFEdGRYdnMzbVBkUDNLUlZxQUxtdlNLMlZtQ2tJUEloc2F4YmpDNnVqTUEk
Igo+Pj4+PiAKPj4+Pj4gVGhpcyBpc3N1ZSBjb21lcyB3aGVuZXZlciBjcmFzaGtlcm5lbCBtZW1v
cnkgaXMgcmVzZXJ2ZWQgYWZ0ZXIgMHhjMDAwXzAwMDAuCj4+Pj4+IE1vcmUgZGV0YWlscyBkaXNj
dXNzZWQgZWFybGllciBpbgo+Pj4+PiBodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6
Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvYXJtLWtlcm5lbC9tc2c4MDY4ODIuaHRtbF9fOyEhR3Fp
dlBWYTdCcmlvIUxuVFNBUmtDdDBWMEZvelIwS21xb29hSDVBRHRkWHZzM21QZFAzS1JWcUFMbXZT
SzJWbUNrSVBJaHNheGJqQzZ1ak1BJCAgd2l0aG91dCBhbnkKPj4+Pj4gc29sdXRpb24KPj4+Pj4g
Cj4+Pj4+IFRoaXMgcGF0Y2gtc2V0IGlzIGV4cGVjdGVkIHRvIHNvbHZlIHNpbWlsYXIga2luZCBv
ZiBpc3N1ZS4KPj4+Pj4gaS5lLiBsb3cgbWVtb3J5IGlzIG9ubHkgdGFyZ2V0ZWQgZm9yIERNQSwg
c3dpb3RsYjsgU28gYWJvdmUgbWVudGlvbmVkCj4+Pj4+IG9ic2VydmF0aW9uIHNob3VsZCBiZSBj
b25zaWRlcmVkL2ZpeGVkLiAuCj4+Pj4+IAo+Pj4+PiAtLXBrCj4+Pj4+IAo+Pj4+PiBbMV0KPj4+
Pj4gWyAgIDMwLjM2NjY5NV0gRE1JOiBDYXZpdW0gSW5jLiBTYWJlci9TYWJlciwgQklPUwo+Pj4+
PiBUWDItRlctUmVsZWFzZS0zLjEtYnVpbGRfMDEtMjgwMy1nNzQyNTNhNTQxYSBtbS9kZC95eXl5
Cj4+Pj4+IFsgICAzMC4zNjc2OTZdIE5FVDogUmVnaXN0ZXJlZCBwcm90b2NvbCBmYW1pbHkgMTYK
Pj4+Pj4gWyAgIDMwLjM2OTk3M10gc3dhcHBlci8wOiBwYWdlIGFsbG9jYXRpb24gZmFpbHVyZTog
b3JkZXI6NiwKPj4+Pj4gbW9kZToweDEoR0ZQX0RNQSksIG5vZGVtYXNrPShudWxsKSxjcHVzZXQ9
LyxtZW1zX2FsbG93ZWQ9MAo+Pj4+PiBbICAgMzAuMzY5OTgwXSBDUFU6IDAgUElEOiAxIENvbW06
IHN3YXBwZXIvMCBOb3QgdGFpbnRlZCA1LjcuMC1yYzMrICMxMjEKPj4+Pj4gWyAgIDMwLjM2OTk4
MV0gSGFyZHdhcmUgbmFtZTogQ2F2aXVtIEluYy4gU2FiZXIvU2FiZXIsIEJJT1MKPj4+Pj4gVFgy
LUZXLVJlbGVhc2UtMy4xLWJ1aWxkXzAxLTI4MDMtZzc0MjUzYTU0MWEgbW0vZGQveXl5eQo+Pj4+
PiBbICAgMzAuMzY5OTg0XSBDYWxsIHRyYWNlOgo+Pj4+PiBbICAgMzAuMzY5OTg5XSAgZHVtcF9i
YWNrdHJhY2UrMHgwLzB4MWY4Cj4+Pj4+IFsgICAzMC4zNjk5OTFdICBzaG93X3N0YWNrKzB4MjAv
MHgzMAo+Pj4+PiBbICAgMzAuMzY5OTk3XSAgZHVtcF9zdGFjaysweGMwLzB4MTBjCj4+Pj4+IFsg
ICAzMC4zNzAwMDFdICB3YXJuX2FsbG9jKzB4MTBjLzB4MTc4Cj4+Pj4+IFsgICAzMC4zNzAwMDRd
ICBfX2FsbG9jX3BhZ2VzX3Nsb3dwYXRoLmNvbnN0cHJvcC4xMTErMHhiMTAvMHhiNTAKPj4+Pj4g
WyAgIDMwLjM3MDAwNl0gIF9fYWxsb2NfcGFnZXNfbm9kZW1hc2srMHgyYjQvMHgzMDAKPj4+Pj4g
WyAgIDMwLjM3MDAwOF0gIGFsbG9jX3BhZ2VfaW50ZXJsZWF2ZSsweDI0LzB4OTgKPj4+Pj4gWyAg
IDMwLjM3MDAxMV0gIGFsbG9jX3BhZ2VzX2N1cnJlbnQrMHhlNC8weDEwOAo+Pj4+PiBbICAgMzAu
MzcwMDE3XSAgZG1hX2F0b21pY19wb29sX2luaXQrMHg0NC8weDFhNAo+Pj4+PiBbICAgMzAuMzcw
MDIwXSAgZG9fb25lX2luaXRjYWxsKzB4NTQvMHgyMjgKPj4+Pj4gWyAgIDMwLjM3MDAyN10gIGtl
cm5lbF9pbml0X2ZyZWVhYmxlKzB4MjI4LzB4MmNjCj4+Pj4+IFsgICAzMC4zNzAwMzFdICBrZXJu
ZWxfaW5pdCsweDFjLzB4MTEwCj4+Pj4+IFsgICAzMC4zNzAwMzRdICByZXRfZnJvbV9mb3JrKzB4
MTAvMHgxOAo+Pj4+PiBbICAgMzAuMzcwMDM2XSBNZW0tSW5mbzoKPj4+Pj4gWyAgIDMwLjM3MDA2
NF0gYWN0aXZlX2Fub246MCBpbmFjdGl2ZV9hbm9uOjAgaXNvbGF0ZWRfYW5vbjowCj4+Pj4+IFsg
ICAzMC4zNzAwNjRdICBhY3RpdmVfZmlsZTowIGluYWN0aXZlX2ZpbGU6MCBpc29sYXRlZF9maWxl
OjAKPj4+Pj4gWyAgIDMwLjM3MDA2NF0gIHVuZXZpY3RhYmxlOjAgZGlydHk6MCB3cml0ZWJhY2s6
MCB1bnN0YWJsZTowCj4+Pj4+IFsgICAzMC4zNzAwNjRdICBzbGFiX3JlY2xhaW1hYmxlOjM0IHNs
YWJfdW5yZWNsYWltYWJsZTo0NDM4Cj4+Pj4+IFsgICAzMC4zNzAwNjRdICBtYXBwZWQ6MCBzaG1l
bTowIHBhZ2V0YWJsZXM6MTQgYm91bmNlOjAKPj4+Pj4gWyAgIDMwLjM3MDA2NF0gIGZyZWU6MTUz
NzcxOSBmcmVlX3BjcDoyMTkgZnJlZV9jbWE6MAo+Pj4+PiBbICAgMzAuMzcwMDcwXSBOb2RlIDAg
YWN0aXZlX2Fub246MGtCIGluYWN0aXZlX2Fub246MGtCCj4+Pj4+IGFjdGl2ZV9maWxlOjBrQiBp
bmFjdGl2ZV9maWxlOjBrQiB1bmV2aWN0YWJsZTowa0IgaXNvbGF0ZWQoYW5vbik6MGtCCj4+Pj4+
IGlzb2xhdGVkKGZpbGUpOjBrQiBtYXBwZWQ6MGtCIGRpcnR5OjBrQiB3cml0ZWJhY2s6MGtCIHNo
bWVtOjBrQgo+Pj4+PiBzaG1lbV90aHA6IDBrQiBzaG1lbV9wbWRtYXBwZWQ6IDBrQiBhbm9uX3Ro
cDogMGtCIHdyaXRlYmFja190bXA6MGtCCj4+Pj4+IHVuc3RhYmxlOjBrQiBhbGxfdW5yZWNsYWlt
YWJsZT8gbm8KPj4+Pj4gWyAgIDMwLjM3MDA3M10gTm9kZSAxIGFjdGl2ZV9hbm9uOjBrQiBpbmFj
dGl2ZV9hbm9uOjBrQgo+Pj4+PiBhY3RpdmVfZmlsZTowa0IgaW5hY3RpdmVfZmlsZTowa0IgdW5l
dmljdGFibGU6MGtCIGlzb2xhdGVkKGFub24pOjBrQgo+Pj4+PiBpc29sYXRlZChmaWxlKTowa0Ig
bWFwcGVkOjBrQiBkaXJ0eTowa0Igd3JpdGViYWNrOjBrQiBzaG1lbTowa0IKPj4+Pj4gc2htZW1f
dGhwOiAwa0Igc2htZW1fcG1kbWFwcGVkOiAwa0IgYW5vbl90aHA6IDBrQiB3cml0ZWJhY2tfdG1w
OjBrQgo+Pj4+PiB1bnN0YWJsZTowa0IgYWxsX3VucmVjbGFpbWFibGU/IG5vCj4+Pj4+IFsgICAz
MC4zNzAwNzldIE5vZGUgMCBETUEgZnJlZTowa0IgbWluOjBrQiBsb3c6MGtCIGhpZ2g6MGtCCj4+
Pj4+IHJlc2VydmVkX2hpZ2hhdG9taWM6MEtCIGFjdGl2ZV9hbm9uOjBrQiBpbmFjdGl2ZV9hbm9u
OjBrQgo+Pj4+PiBhY3RpdmVfZmlsZTowa0IgaW5hY3RpdmVfZmlsZTowa0IgdW5ldmljdGFibGU6
MGtCIHdyaXRlcGVuZGluZzowa0IKPj4+Pj4gcHJlc2VudDoxMjhrQiBtYW5hZ2VkOjBrQiBtbG9j
a2VkOjBrQiBrZXJuZWxfc3RhY2s6MGtCIHBhZ2V0YWJsZXM6MGtCCj4+Pj4+IGJvdW5jZTowa0Ig
ZnJlZV9wY3A6MGtCIGxvY2FsX3BjcDowa0IgZnJlZV9jbWE6MGtCCj4+Pj4+IFsgICAzMC4zNzAw
ODRdIGxvd21lbV9yZXNlcnZlW106IDAgMjUwIDYwNjMgNjA2Mwo+Pj4+PiBbICAgMzAuMzcwMDkw
XSBOb2RlIDAgRE1BMzIgZnJlZToyNTYwMDBrQiBtaW46NDA4a0IgbG93OjY2NGtCCj4+Pj4+IGhp
Z2g6OTIwa0IgcmVzZXJ2ZWRfaGlnaGF0b21pYzowS0IgYWN0aXZlX2Fub246MGtCIGluYWN0aXZl
X2Fub246MGtCCj4+Pj4+IGFjdGl2ZV9maWxlOjBrQiBpbmFjdGl2ZV9maWxlOjBrQiB1bmV2aWN0
YWJsZTowa0Igd3JpdGVwZW5kaW5nOjBrQgo+Pj4+PiBwcmVzZW50OjI2OTcwMGtCIG1hbmFnZWQ6
MjU2MDAwa0IgbWxvY2tlZDowa0Iga2VybmVsX3N0YWNrOjBrQgo+Pj4+PiBwYWdldGFibGVzOjBr
QiBib3VuY2U6MGtCIGZyZWVfcGNwOjBrQiBsb2NhbF9wY3A6MGtCIGZyZWVfY21hOjBrQgo+Pj4+
PiBbICAgMzAuMzcwMDk0XSBsb3dtZW1fcmVzZXJ2ZVtdOiAwIDAgNTgxMyA1ODEzCj4+Pj4+IFsg
ICAzMC4zNzAxMDBdIE5vZGUgMCBOb3JtYWwgZnJlZTo1ODk0ODc2a0IgbWluOjk1NTJrQiBsb3c6
MTU1MDRrQgo+Pj4+PiBoaWdoOjIxNDU2a0IgcmVzZXJ2ZWRfaGlnaGF0b21pYzowS0IgYWN0aXZl
X2Fub246MGtCIGluYWN0aXZlX2Fub246MGtCCj4+Pj4+IGFjdGl2ZV9maWxlOjBrQiBpbmFjdGl2
ZV9maWxlOjBrQiB1bmV2aWN0YWJsZTowa0Igd3JpdGVwZW5kaW5nOjBrQgo+Pj4+PiBwcmVzZW50
OjgzODg2MDhrQiBtYW5hZ2VkOjU5NTMxMTJrQiBtbG9ja2VkOjBrQiBrZXJuZWxfc3RhY2s6MjE2
NzJrQgo+Pj4+PiBwYWdldGFibGVzOjU2a0IgYm91bmNlOjBrQiBmcmVlX3BjcDo4NzZrQiBsb2Nh
bF9wY3A6MTc2a0IgZnJlZV9jbWE6MGtCCj4+Pj4+IFsgICAzMC4zNzAxMDRdIGxvd21lbV9yZXNl
cnZlW106IDAgMCAwIDAKPj4+Pj4gWyAgIDMwLjM3MDEwN10gTm9kZSAwIERNQTogMCo0a0IgMCo4
a0IgMCoxNmtCIDAqMzJrQiAwKjY0a0IgMCoxMjhrQgo+Pj4+PiAwKjI1NmtCIDAqNTEya0IgMCox
MDI0a0IgMCoyMDQ4a0IgMCo0MDk2a0IgPSAwa0IKPj4+Pj4gWyAgIDMwLjM3MDExM10gTm9kZSAw
IERNQTMyOiAwKjRrQiAwKjhrQiAwKjE2a0IgMCozMmtCIDAqNjRrQiAwKjEyOGtCCj4+Pj4+IDAq
MjU2a0IgMCo1MTJrQiAwKjEwMjRrQiAxKjIwNDhrQiAoTSkgNjIqNDA5NmtCIChNKSA9IDI1NjAw
MGtCCj4+Pj4+IFsgICAzMC4zNzAxMTldIE5vZGUgMCBOb3JtYWw6IDIqNGtCIChNKSAzKjhrQiAo
TUUpIDIqMTZrQiAoVUUpIDMqMzJrQgo+Pj4+PiAoVU0pIDEqNjRrQiAoVSkgMioxMjhrQiAoTSkg
MioyNTZrQiAoTUUpIDMqNTEya0IgKE1FKSAzKjEwMjRrQiAoTUUpCj4+Pj4+IDMqMjA0OGtCIChV
TUUpIDE0MzYqNDA5NmtCIChNKSA9IDU4OTM2MDBrQgo+Pj4+PiBbICAgMzAuMzcwMTI5XSBOb2Rl
IDAgaHVnZXBhZ2VzX3RvdGFsPTAgaHVnZXBhZ2VzX2ZyZWU9MAo+Pj4+PiBodWdlcGFnZXNfc3Vy
cD0wIGh1Z2VwYWdlc19zaXplPTEwNDg1NzZrQgo+Pj4+PiBbICAgMzAuMzcwMTMwXSAwIHRvdGFs
IHBhZ2VjYWNoZSBwYWdlcwo+Pj4+PiBbICAgMzAuMzcwMTMyXSAwIHBhZ2VzIGluIHN3YXAgY2Fj
aGUKPj4+Pj4gWyAgIDMwLjM3MDEzNF0gU3dhcCBjYWNoZSBzdGF0czogYWRkIDAsIGRlbGV0ZSAw
LCBmaW5kIDAvMAo+Pj4+PiBbICAgMzAuMzcwMTM1XSBGcmVlIHN3YXAgID0gMGtCCj4+Pj4+IFsg
ICAzMC4zNzAxMzZdIFRvdGFsIHN3YXAgPSAwa0IKPj4+Pj4gWyAgIDMwLjM3MDEzN10gMjE2NDYw
OSBwYWdlcyBSQU0KPj4+Pj4gWyAgIDMwLjM3MDEzOV0gMCBwYWdlcyBIaWdoTWVtL01vdmFibGVP
bmx5Cj4+Pj4+IFsgICAzMC4zNzAxNDBdIDYxMjMzMSBwYWdlcyByZXNlcnZlZAo+Pj4+PiBbICAg
MzAuMzcwMTQxXSAwIHBhZ2VzIGh3cG9pc29uZWQKPj4+Pj4gWyAgIDMwLjM3MDE0M10gRE1BOiBm
YWlsZWQgdG8gYWxsb2NhdGUgMjU2IEtpQiBwb29sIGZvciBhdG9taWMKPj4+Pj4gY29oZXJlbnQg
YWxsb2NhdGlvbgo+Pj4+IAo+Pj4+IAo+Pj4+IER1cmluZyBteSB0ZXN0aW5nIEkgc2F3IHRoZSBz
YW1lIGVycm9yIGFuZCBDaGVuJ3MgIHNvbHV0aW9uIGNvcnJlY3RlZCBpdCAuCj4+PiAKPj4+IFdo
aWNoIGNvbWJpbmF0aW9uIHlvdSBhcmUgdXNpbmcgb24geW91ciBzaWRlPyBJIGFtIHVzaW5nIFBy
YWJoYWthcidzCj4+PiBzdWdnZXN0ZWQgZW52aXJvbm1lbnQgYW5kIGNhbiByZXByb2R1Y2UgdGhl
IGlzc3VlCj4+PiB3aXRoIG9yIHdpdGhvdXQgQ2hlbidzIGNyYXNoa2VybmVsIHN1cHBvcnQgYWJv
dmUgNEcgcGF0Y2hzZXQuCj4+PiAKPj4+IEkgYW0gYWxzbyB1c2luZyBhIFRodW5kZXJYMiBwbGF0
Zm9ybSB3aXRoIGxhdGVzdCBtYWtlZHVtcGZpbGUgY29kZSBhbmQKPj4+IGtleGVjLXRvb2xzICh3
aXRoIHRoZSBzdWdnZXN0ZWQgcGF0Y2gKPj4+IDxodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19f
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9rZXhlYy8yMDIwLU1heS8wMjUx
MjguaHRtbF9fOyEhR3FpdlBWYTdCcmlvIUo2bFVpZzU4LUd3NlRLWm5FRVl6RWVTVTM2VC0xU3Fs
QjFrSW1VMDB4dFhfbHNzNVR4LUpiVW1MRTlUSkMzZm9YQkxnJCA+KS4KPj4+IAo+Pj4gVGhhbmtz
LAo+Pj4gQmh1cGVzaAo+PiAKPj4gCj4+IEkgZGlkIHRoaXMgYWN0aXZpdHkgNSBtb250aHMgYWdv
IGFuZCBJIGhhdmUgbW92ZWQgb24gdG8gb3RoZXIgYWN0aXZpdGllcy4gTXkgRE1BIGZhaWx1cmVz
IHdlcmUgcmVsYXRlZCB0byBQQ0kgZGV2aWNlcyB0aGF0IGNvdWxkIG5vdCBiZSBlbnVtZXJhdGVk
IGJlY2F1c2UgIGxvdy1ETUEgc3BhY2Ugd2FzIG5vdCAgYXZhaWxhYmxlIHdoZW4gY3Jhc2hrZXJu
ZWwgd2FzIG1vdmVkIGFib3ZlIDRHOyBJIGRvbuKAmXQgcmVjYWxsIHRoZSBleGFjdCBwbGF0Zm9y
bS4KPj4gCj4+IAo+PiAKPj4gRm9yIHRoaXMgZmFpbHVyZSAsCj4+IAo+Pj4+PiBETUE6IGZhaWxl
ZCB0byBhbGxvY2F0ZSAyNTYgS2lCIHBvb2wgZm9yIGF0b21pYwo+Pj4+PiBjb2hlcmVudCBhbGxv
Y2F0aW9uCj4+IAo+PiAKPj4gSXMgZHVlIHRvIDoKPj4gCj4+IAo+PiAzNjE4MDgyYwo+PiAoImFy
bTY0IHVzZSBib3RoIFpPTkVfRE1BIGFuZCBaT05FX0RNQTMyIikKPj4gCj4+IFdpdGggdGhlIGlu
dHJvZHVjdGlvbiBvZiBaT05FX0RNQSB0byBzdXBwb3J0IHRoZSBSYXNwYmVycnkgRE1BCj4+IHJl
Z2lvbiBiZWxvdyAxRywgdGhlIGNyYXNoa2VybmVsIGlzIHBsYWNlZCBpbiB0aGUgdXBwZXIgNEcK
Pj4gWk9ORV9ETUFfMzIgcmVnaW9uLiBTaW5jZSB0aGUgY3Jhc2hrZXJuZWwgZG9lcyBub3QgaGF2
ZSBhY2Nlc3MKPj4gdG8gdGhlIFpPTkVfRE1BIHJlZ2lvbiwgaXQgcHJpbnRzIG91dCBjYWxsIHRy
YWNlIGR1cmluZyBib290dXAuCj4+IAo+PiBJdCBpcyBkdWUgdG8gaGF2aW5nIHRoaXMgQ09ORklH
IGl0ZW0gIE9OICA6Cj4+IAo+PiAKPj4gQ09ORklHX1pPTkVfRE1BPXkKPj4gCj4+IFR1cm5pbmcg
b2ZmIFpPTkVfRE1BIGZpeGVzIGEgaXNzdWUgYW5kIFJhc3BiZXJyeSBQSSA0IHdpbGwKPj4gdXNl
IHRoZSBkZXZpY2UgdHJlZSB0byBzcGVjaWZ5IG1lbW9yeSBiZWxvdyAxRy4KPj4gCj4+IAo+IAo+
IERpc2FibGluZyBaT05FX0RNQSBpcyB0ZW1wb3Jhcnkgc29sdXRpb24uICBXZSBtYXkgbmVlZCBw
cm9wZXIgc29sdXRpb24KCgpQZXJoYXBzIHRoZSBSYXNwYmVycnkgcGxhdGZvcm0gY29uZmlndXJh
dGlvbiBkZXBlbmRlbmNpZXMgbmVlZCBzZXBhcmF0ZWQgIGZyb20g4oCcc2VydmVyIGNsYXNz4oCd
IEFybSAgZXF1aXBtZW50ID8gIE9yIGF1dG8tY29uZmlndXJlZCBvbiBib290ID8gIENvbnN1bHQg
YW4gZXhwZXJ0IDstKSAKCgoKPiAKPj4gSSB3b3VsZCBsaWtlIHRvIHNlZSBDaGVu4oCZcyBmZWF0
dXJlIGFkZGVkICwgcGVyaGFwcyBhcyBFWFBFUklNRU5UQUwsICBzbyB3ZSBjYW4gZ2V0IHNvbWUg
Y29uZmlndXJhdGlvbiB0ZXN0aW5nIGRvbmUgb24gaXQuICAgSXQgY29ycmVjdHMgaGF2aW5nIGEg
RE1BIHpvbmUgaW4gbG93IG1lbW9yeSB3aGlsZSBjcmFzaC1rZXJuZWwgaXMgYWJvdmUgNEdCLiAg
VGhpcyBoYXMgYmVlbiBnb2luZyBvbiBmb3IgYSB5ZWFyIG5vdy4KPiAKPiBJIHdpbGwgYWxzbyBs
aWtlIHRoaXMgcGF0Y2ggdG8gYmUgYWRkZWQgaW4gTGludXggYXMgZWFybHkgYXMgcG9zc2libGUu
Cj4gCj4gSXNzdWUgbWVudGlvbmVkIGJ5IG1lIGhhcHBlbnMgd2l0aCBvciB3aXRob3V0IHRoaXMg
cGF0Y2guCj4gCj4gVGhpcyBwYXRjaC1zZXQgY2FuIGNvbnNpZGVyIGZpeGluZyBiZWNhdXNlIGl0
IHVzZXMgbG93IG1lbW9yeSBmb3IgRE1BCj4gJiBzd2lvdGxiIG9ubHkuCj4gV2UgY2FuIGNvbnNp
ZGVyIHJlc3RyaWN0aW5nIGNyYXNoa2VybmVsIHdpdGhpbiB0aGUgcmVxdWlyZWQgcmFuZ2UgbGlr
ZSBiZWxvdwo+IAo+IGRpZmYgLS1naXQgYS9rZXJuZWwvY3Jhc2hfY29yZS5jIGIva2VybmVsL2Ny
YXNoX2NvcmUuYwo+IGluZGV4IDdmOWU1YTZkYzQ4Yy4uYmQ2N2I5MGQzNWJkIDEwMDY0NAo+IC0t
LSBhL2tlcm5lbC9jcmFzaF9jb3JlLmMKPiArKysgYi9rZXJuZWwvY3Jhc2hfY29yZS5jCj4gQEAg
LTM1NCw3ICszNTQsNyBAQCBpbnQgX19pbml0IHJlc2VydmVfY3Jhc2hrZXJuZWxfbG93KHZvaWQp
Cj4gICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gMDsKPiAgICAgICAgfQo+IAo+IC0gICAg
ICAgbG93X2Jhc2UgPSBtZW1ibG9ja19maW5kX2luX3JhbmdlKDAsIDFVTEwgPDwgMzIsIGxvd19z
aXplLCBDUkFTSF9BTElHTik7Cj4gKyAgICAgICBsb3dfYmFzZSA9IG1lbWJsb2NrX2ZpbmRfaW5f
cmFuZ2UoMCwweGMwMDAwMDAwLCBsb3dfc2l6ZSwgQ1JBU0hfQUxJR04pOwo+ICAgICAgICBpZiAo
IWxvd19iYXNlKSB7Cj4gICAgICAgICAgICAgICAgcHJfZXJyKCJDYW5ub3QgcmVzZXJ2ZSAlbGRN
QiBjcmFzaGtlcm5lbCBsb3cgbWVtb3J5LAo+IHBsZWFzZSB0cnkgc21hbGxlciBzaXplLlxuIiwK
PiAgICAgICAgICAgICAgICAgICAgICAgKHVuc2lnbmVkIGxvbmcpKGxvd19zaXplID4+IDIwKSk7
Cj4gCj4gCgogICAgSSBzdXNwZWN0ICAweGMwMDAwMDAwICB3b3VsZCBuZWVkIHRvIGJlIGEgQ09O
RklHIGl0ZW0gIGFuZCBub3QgaGFyZC1jb2RlZC4KICAgIAogICAgCgo+IFNpbWlsYXIgY2hhbmdl
IGNhbiBiZSBjb25zaWRlcmVkIGZvciBzY2VuYXJpbyAid2l0aG91dCIgdGhpcyBwYXRjaC4KPiBC
dXQgaXQgd2lsbCBkZWNyZWFzZSBtZW1vcnkgYXZhaWxhYmlsaXR5IGZvciBjcmFzaGtlcm5lbC4K
PiBIZW5jZSBpbmNyZWFzZSB0aGUgZmFpbHVyZSBwcm9iYWJpbGl0eSBvZiBjcmFzaGtlcm5lbCBy
ZXNlcnZhdGlvbi4KPiAKPiAtLXBrCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
