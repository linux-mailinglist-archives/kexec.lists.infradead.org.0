Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 441DE1EAF94
	for <lists+kexec@lfdr.de>; Mon,  1 Jun 2020 21:31:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s9UxliF/HiAGjPdojn3U4Q54yweMnrWUbwNTfpokkkA=; b=LAIdqyLlrOuR45tD7K8nbnbu+
	OdizPiMVFll7NSjGOtYGiLBizzwFIZrf+BkJJRDguRN5XF4nVKcCmRhalkrvQqAUvNvRNPcL0mTRi
	5JvdKY+LaPDAb3F67RZeGbSZ4DB7Tc8Vs14Fn3KVG0Ln2X4hA/kROEXwEgjWAdl5Y2fkDqIeZg7Hr
	5kK9w+jAygeCDnF2cM5TnMqAy3mKFr3WgXtVCGUezioj1UAiYUeb7+nSdpGIaTFLEOTemqbYKGS41
	RZhB85WOEHcB9X5moxKv+eP4NhfEwkF7ZebVHtsZ/RAAuLSSTXkXJU2IWGBCCm4YCgngSmIUwRF3A
	2ArnaddOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfq9Z-0001aU-0y; Mon, 01 Jun 2020 19:31:21 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfq9V-0001Yz-0o; Mon, 01 Jun 2020 19:31:20 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 051JHsYY033505;
 Mon, 1 Jun 2020 19:30:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=99bX7LbE/rd0UoEHl5ZkNlsl3nd8u3xm14xHmfAdCYk=;
 b=YU+K2dn0E48mqXOCiE2qY+6sgC5QYCcb5T+JxrrbKcSUIFTVynebpV8pbcpQSvfposea
 1xQcJwi0pnKZmZmOg+VGP0Cw0JncuflWH685YjSp8sOLn/RnFgoJF3AGr3Vc/32cPPNW
 CnD2Pzorh4/PS2umNO6qFJ3+nGaDcEDADmywHqCdFwVJvz7g8Lof+BhYsQymymUfFwXF
 /YO6vxmA75hoJdap58yGRWFQL8yJqUA5NaMw1mcLIJsvNZ4VBoRUZOlRbZP7Dgb85q+P
 ON90Sm4eajuwdBlbeQZGimARG8EWSZfRlo6fh/sI1ns7QIzzEq6NuthnwLIoiKNzMAsZ iw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 31bewqrgsc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 01 Jun 2020 19:30:46 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 051JHrV7087956;
 Mon, 1 Jun 2020 19:30:46 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 31c25kjhq7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Jun 2020 19:30:46 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 051JUaaq016865;
 Mon, 1 Jun 2020 19:30:36 GMT
Received: from [192.168.1.106] (/47.220.71.223)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 01 Jun 2020 12:30:36 -0700
Subject: Re: [PATCH v8 0/5] support reserving crashkernel above 4G on arm64
 kdump
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>,
 Chen Zhou <chenzhou10@huawei.com>
References: <20200521093805.64398-1-chenzhou10@huawei.com>
 <CAJ2QiJ+1Hj2OQzpR5CfvLGMfTTbXAST94hsbfm0VcDmJKV3WTw@mail.gmail.com>
From: John Donnelly <John.P.donnelly@oracle.com>
Message-ID: <303695cc-d3ea-9f51-1489-07d27d4253d4@oracle.com>
Date: Mon, 1 Jun 2020 14:30:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAJ2QiJ+1Hj2OQzpR5CfvLGMfTTbXAST94hsbfm0VcDmJKV3WTw@mail.gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9639
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0 spamscore=0
 malwarescore=0 bulkscore=0 mlxscore=0 phishscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006010142
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9639
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 bulkscore=0
 phishscore=0 suspectscore=0 impostorscore=0 cotscore=-2147483648
 lowpriorityscore=0 mlxscore=0 adultscore=0 spamscore=0 mlxlogscore=999
 malwarescore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006010142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_123117_151555_C820904F 
X-CRM114-Status: GOOD (  26.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: horms@verge.net.au, devicetree@vger.kernel.org, bhe@redhat.com,
 Will Deacon <will@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, robh+dt@kernel.org,
 mingo@redhat.com, arnd@arndb.de, guohanjun@huawei.com,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>, dyoung@redhat.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGksCgoKT24gNi8xLzIwIDc6MDIgQU0sIFByYWJoYWthciBLdXNod2FoYSB3cm90ZToKPiBIaSBD
aGVuLAo+Cj4gT24gVGh1LCBNYXkgMjEsIDIwMjAgYXQgMzowNSBQTSBDaGVuIFpob3UgPGNoZW56
aG91MTBAaHVhd2VpLmNvbT4gd3JvdGU6Cj4+IFRoaXMgcGF0Y2ggc2VyaWVzIGVuYWJsZSByZXNl
cnZpbmcgY3Jhc2hrZXJuZWwgYWJvdmUgNEcgaW4gYXJtNjQuCj4+Cj4+IFRoZXJlIGFyZSBmb2xs
b3dpbmcgaXNzdWVzIGluIGFybTY0IGtkdW1wOgo+PiAxLiBXZSB1c2UgY3Jhc2hrZXJuZWw9WCB0
byByZXNlcnZlIGNyYXNoa2VybmVsIGJlbG93IDRHLCB3aGljaCB3aWxsIGZhaWwKPj4gd2hlbiB0
aGVyZSBpcyBubyBlbm91Z2ggbG93IG1lbW9yeS4KPj4gMi4gQ3VycmVudGx5LCBjcmFzaGtlcm5l
bD1ZQFggY2FuIGJlIHVzZWQgdG8gcmVzZXJ2ZSBjcmFzaGtlcm5lbCBhYm92ZSA0RywKPj4gaW4g
dGhpcyBjYXNlLCBpZiBzd2lvdGxiIG9yIERNQSBidWZmZXJzIGFyZSByZXF1aXJlZCwgY3Jhc2gg
ZHVtcCBrZXJuZWwKPj4gd2lsbCBib290IGZhaWx1cmUgYmVjYXVzZSB0aGVyZSBpcyBubyBsb3cg
bWVtb3J5IGF2YWlsYWJsZSBmb3IgYWxsb2NhdGlvbi4KPj4KPj4gVG8gc29sdmUgdGhlc2UgaXNz
dWVzLCBpbnRyb2R1Y2UgY3Jhc2hrZXJuZWw9WCxsb3cgdG8gcmVzZXJ2ZSBzcGVjaWZpZWQKPj4g
c2l6ZSBsb3cgbWVtb3J5Lgo+PiBDcmFzaGtlcm5lbD1YIHRyaWVzIHRvIHJlc2VydmUgbWVtb3J5
IGZvciB0aGUgY3Jhc2ggZHVtcCBrZXJuZWwgdW5kZXIKPj4gNEcuIElmIGNyYXNoa2VybmVsPVks
bG93IGlzIHNwZWNpZmllZCBzaW11bHRhbmVvdXNseSwgcmVzZXJ2ZSBzcGNpZmllZAo+PiBzaXpl
IGxvdyBtZW1vcnkgZm9yIGNyYXNoIGtkdW1wIGtlcm5lbCBkZXZpY2VzIGZpcnN0bHkgYW5kIHRo
ZW4gcmVzZXJ2ZQo+PiBtZW1vcnkgYWJvdmUgNEcuCj4+Cj4+IFdoZW4gY3Jhc2hrZXJuZWwgaXMg
cmVzZXJ2ZWQgYWJvdmUgNEcgaW4gbWVtb3J5LCB0aGF0IGlzLCBjcmFzaGtlcm5lbD1YLGxvdwo+
PiBpcyBzcGVjaWZpZWQgc2ltdWx0YW5lb3VzbHksIGtlcm5lbCBzaG91bGQgcmVzZXJ2ZSBzcGVj
aWZpZWQgc2l6ZSBsb3cgbWVtb3J5Cj4+IGZvciBjcmFzaCBkdW1wIGtlcm5lbCBkZXZpY2VzLiBT
byB0aGVyZSBtYXkgYmUgdHdvIGNyYXNoIGtlcm5lbCByZWdpb25zLCBvbmUKPj4gaXMgYmVsb3cg
NEcsIHRoZSBvdGhlciBpcyBhYm92ZSA0Ry4KPj4gSW4gb3JkZXIgdG8gZGlzdGluY3QgZnJvbSB0
aGUgaGlnaCByZWdpb24gYW5kIG1ha2Ugbm8gZWZmZWN0IHRvIHRoZSB1c2Ugb2YKPj4ga2V4ZWMt
dG9vbHMsIHJlbmFtZSB0aGUgbG93IHJlZ2lvbiBhcyAiQ3Jhc2gga2VybmVsIChsb3cpIiwgYW5k
IGFkZCBEVCBwcm9wZXJ0eQo+PiAibGludXgsbG93LW1lbW9yeS1yYW5nZSIgdG8gY3Jhc2ggZHVt
cCBrZXJuZWwncyBkdGIgdG8gcGFzcyB0aGUgbG93IHJlZ2lvbi4KPj4KPj4gQmVzaWRlcywgd2Ug
bmVlZCB0byBtb2RpZnkga2V4ZWMtdG9vbHM6Cj4+IGFybTY0OiBrZHVtcDogYWRkIGFub3RoZXIg
RFQgcHJvcGVydHkgdG8gY3Jhc2ggZHVtcCBrZXJuZWwncyBkdGIoc2VlIFsxXSkKPj4KPj4gVGhl
IHByZXZpb3VzIGNoYW5nZXMgYW5kIGRpc2N1c3Npb25zIGNhbiBiZSByZXRyaWV2ZWQgZnJvbToK
Pj4KPj4gQ2hhbmdlcyBzaW5jZSBbdjddCj4+IC0gTW92ZSB4ODYgQ1JBU0hfQUxJR04gdG8gMk0K
Pj4gU3VnZ2VzdGVkIGJ5IERhdmUgYW5kIGRvIHNvbWUgdGVzdCwgbW92ZSB4ODYgQ1JBU0hfQUxJ
R04gdG8gMk0uCj4+IC0gVXBkYXRlIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9j
aG9zZW4udHh0Cj4+IEFkZCBjb3JyZXNwb25kaW5nIGRvY3VtZW50YXRpb24gdG8gRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nob3Nlbi50eHQgc3VnZ2VzdGVkIGJ5IEFybmQuCj4+
IC0gQWRkIFRlc3RlZC1ieSBmcm9tIEpob24gYW5kIHBrCj4+Cj4+IENoYW5nZXMgc2luY2UgW3Y2
XQo+PiAtIEZpeCBidWlsZCBlcnJvcnMgcmVwb3J0ZWQgYnkga2J1aWxkIHRlc3Qgcm9ib3QuCj4+
Cj4+IENoYW5nZXMgc2luY2UgW3Y1XQo+PiAtIE1vdmUgcmVzZXJ2ZV9jcmFzaGtlcm5lbF9sb3co
KSBpbnRvIGtlcm5lbC9jcmFzaF9jb3JlLmMuCj4+IC0gRGVsZXRlIGNyYXNoa2VybmVsPVgsaGln
aC4KPj4gLSBNb2RpZnkgY3Jhc2hrZXJuZWw9WCxsb3cuCj4+IElmIGNyYXNoa2VybmVsPVgsbG93
IGlzIHNwZWNpZmllZCBzaW11bHRhbmVvdXNseSwgcmVzZXJ2ZSBzcGNpZmllZCBzaXplIGxvdwo+
PiBtZW1vcnkgZm9yIGNyYXNoIGtkdW1wIGtlcm5lbCBkZXZpY2VzIGZpcnN0bHkgYW5kIHRoZW4g
cmVzZXJ2ZSBtZW1vcnkgYWJvdmUgNEcuCj4+IEluIGFkZGl0aW9uLCByZW5hbWUgY3Jhc2hrX2xv
d19yZXMgYXMgIkNyYXNoIGtlcm5lbCAobG93KSIgZm9yIGFybTY0LCBhbmQgdGhlbgo+PiBwYXNz
IHRvIGNyYXNoIGR1bXAga2VybmVsIGJ5IERUIHByb3BlcnR5ICJsaW51eCxsb3ctbWVtb3J5LXJh
bmdlIi4KPj4gLSBVcGRhdGUgRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9rZHVtcC9rZHVtcC5y
c3QuCj4+Cj4+IENoYW5nZXMgc2luY2UgW3Y0XQo+PiAtIFJlaW1wbGVtZW50IG1lbWJsb2NrX2Nh
cF9tZW1vcnlfcmFuZ2VzIGZvciBtdWx0aXBsZSByYW5nZXMgYnkgTWlrZS4KPj4KPj4gQ2hhbmdl
cyBzaW5jZSBbdjNdCj4+IC0gQWRkIG1lbWJsb2NrX2NhcF9tZW1vcnlfcmFuZ2VzIGJhY2sgZm9y
IG11bHRpcGxlIHJhbmdlcy4KPj4gLSBGaXggc29tZSBjb21waWxpbmcgd2FybmluZ3MuCj4+Cj4+
IENoYW5nZXMgc2luY2UgW3YyXQo+PiAtIFNwbGl0IHBhdGNoICJhcm02NDoga2R1bXA6IHN1cHBv
cnQgcmVzZXJ2aW5nIGNyYXNoa2VybmVsIGFib3ZlIDRHIiBhcwo+PiB0d28uIFB1dCAibW92ZSBy
ZXNlcnZlX2NyYXNoa2VybmVsX2xvdygpIGludG8ga2V4ZWNfY29yZS5jIiBpbiBhIHNlcGFyYXRl
Cj4+IHBhdGNoLgo+Pgo+PiBDaGFuZ2VzIHNpbmNlIFt2MV06Cj4+IC0gTW92ZSBjb21tb24gcmVz
ZXJ2ZV9jcmFzaGtlcm5lbF9sb3coKSBjb2RlIGludG8ga2VybmVsL2tleGVjX2NvcmUuYy4KPj4g
LSBSZW1vdmUgbWVtYmxvY2tfY2FwX21lbW9yeV9yYW5nZXMoKSBpIGFkZGVkIGluIHYxIGFuZCBp
bXBsZW1lbnQgdGhhdAo+PiBpbiBmZHRfZW5mb3JjZV9tZW1vcnlfcmVnaW9uKCkuCj4+IFRoZXJl
IGFyZSBhdCBtb3N0IHR3byBjcmFzaCBrZXJuZWwgcmVnaW9ucywgZm9yIHR3byBjcmFzaCBrZXJu
ZWwgcmVnaW9ucwo+PiBjYXNlLCB3ZSBjYXAgdGhlIG1lbW9yeSByYW5nZSBbbWluKHJlZ3NbKl0u
c3RhcnQpLCBtYXgocmVnc1sqXS5lbmQpXQo+PiBhbmQgdGhlbiByZW1vdmUgdGhlIG1lbW9yeSBy
YW5nZSBpbiB0aGUgbWlkZGxlLgo+Pgo+PiBbMV06IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMv
X19odHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwva2V4ZWMvMjAyMC1NYXkvMDI1
MTI4Lmh0bWxfXzshIUdxaXZQVmE3QnJpbyFMblRTQVJrQ3QwVjBGb3pSMEttcW9vYUg1QUR0ZFh2
czNtUGRQM0tSVnFBTG12U0syVm1Da0lQSWhzYXhidnBuMXVNMSQKPj4gW3YxXTogaHR0cHM6Ly91
cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzQvMi8xMTc0X187
ISFHcWl2UFZhN0JyaW8hTG5UU0FSa0N0MFYwRm96UjBLbXFvb2FINUFEdGRYdnMzbVBkUDNLUlZx
QUxtdlNLMlZtQ2tJUEloc2F4YnQweE45UEUkCj4+IFt2Ml06IGh0dHBzOi8vdXJsZGVmZW5zZS5j
b20vdjMvX19odHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS80LzkvODZfXzshIUdxaXZQVmE3QnJp
byFMblRTQVJrQ3QwVjBGb3pSMEttcW9vYUg1QUR0ZFh2czNtUGRQM0tSVnFBTG12U0syVm1Da0lQ
SWhzYXhidWI3eVVRSCQKPj4gW3YzXTogaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBz
Oi8vbGttbC5vcmcvbGttbC8yMDE5LzQvOS8zMDZfXzshIUdxaXZQVmE3QnJpbyFMblRTQVJrQ3Qw
VjBGb3pSMEttcW9vYUg1QUR0ZFh2czNtUGRQM0tSVnFBTG12U0syVm1Da0lQSWhzYXhibmM0elBQ
ViQKPj4gW3Y0XTogaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vbGttbC5vcmcv
bGttbC8yMDE5LzQvMTUvMjczX187ISFHcWl2UFZhN0JyaW8hTG5UU0FSa0N0MFYwRm96UjBLbXFv
b2FINUFEdGRYdnMzbVBkUDNLUlZxQUxtdlNLMlZtQ2tJUEloc2F4YnZzQXNaTHUkCj4+IFt2NV06
IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS81
LzYvMTM2MF9fOyEhR3FpdlBWYTdCcmlvIUxuVFNBUmtDdDBWMEZvelIwS21xb29hSDVBRHRkWHZz
M21QZFAzS1JWcUFMbXZTSzJWbUNrSVBJaHNheGJsMjRuLTc5JAo+PiBbdjZdOiBodHRwczovL3Vy
bGRlZmVuc2UuY29tL3YzL19faHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvOC8zMC8xNDJfXzsh
IUdxaXZQVmE3QnJpbyFMblRTQVJrQ3QwVjBGb3pSMEttcW9vYUg1QUR0ZFh2czNtUGRQM0tSVnFB
TG12U0syVm1Da0lQSWhzYXhiczdyOEcyYSQKPj4gW3Y3XTogaHR0cHM6Ly91cmxkZWZlbnNlLmNv
bS92My9fX2h0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzEyLzIzLzQxMV9fOyEhR3FpdlBWYTdC
cmlvIUxuVFNBUmtDdDBWMEZvelIwS21xb29hSDVBRHRkWHZzM21QZFAzS1JWcUFMbXZTSzJWbUNr
SVBJaHNheGJpRlVIOTBHJAo+Pgo+PiBDaGVuIFpob3UgKDUpOgo+PiAgICB4ODY6IGtkdW1wOiBt
b3ZlIHJlc2VydmVfY3Jhc2hrZXJuZWxfbG93KCkgaW50byBjcmFzaF9jb3JlLmMKPj4gICAgYXJt
NjQ6IGtkdW1wOiByZXNlcnZlIGNyYXNoa2VuZWwgYWJvdmUgNEcgZm9yIGNyYXNoIGR1bXAga2Vy
bmVsCj4+ICAgIGFybTY0OiBrZHVtcDogYWRkIG1lbW9yeSBmb3IgZGV2aWNlcyBieSBEVCBwcm9w
ZXJ0eSwgbG93LW1lbW9yeS1yYW5nZQo+PiAgICBrZHVtcDogdXBkYXRlIERvY3VtZW50YXRpb24g
YWJvdXQgY3Jhc2hrZXJuZWwgb24gYXJtNjQKPj4gICAgZHQtYmluZGluZ3M6IGNob3NlbjogRG9j
dW1lbnQgbGludXgsbG93LW1lbW9yeS1yYW5nZSBmb3IgYXJtNjQga2R1bXAKPj4KPiBXZSBhcmUg
Z2V0dGluZyAid2Fybl9hbGxvYyIgWzFdIHdhcm5pbmcgZHVyaW5nIGJvb3Qgb2Yga2R1bXAga2Vy
bmVsCj4gd2l0aCBib290YXJncyBhcyBbMl0gb2YgcHJpbWFyeSBrZXJuZWwuCj4gVGhpcyBlcnJv
ciBvYnNlcnZlZCBvbiBUaHVuZGVyWDIgIEFSTTY0IHBsYXRmb3JtLgo+Cj4gSXQgaXMgb2JzZXJ2
ZWQgd2l0aCBsYXRlc3QgdXBzdHJlYW0gdGFnICh2NS43LXJjMykgd2l0aCB0aGlzIHBhdGNoIHNl
dAo+ICAgYW5kIGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvcGlwZXJtYWlsL2tleGVjLzIwMjAtTWF5LzAyNTEyOC5odG1sX187ISFHcWl2UFZh
N0JyaW8hTG5UU0FSa0N0MFYwRm96UjBLbXFvb2FINUFEdGRYdnMzbVBkUDNLUlZxQUxtdlNLMlZt
Q2tJUEloc2F4YmlJQUFsenUkCj4gQWxzbyAqKndpdGhvdXQqKiB0aGlzIHBhdGNoLXNldAo+ICJo
dHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMv
YXJtLWtlcm5lbC9tc2c4MDY4ODIuaHRtbF9fOyEhR3FpdlBWYTdCcmlvIUxuVFNBUmtDdDBWMEZv
elIwS21xb29hSDVBRHRkWHZzM21QZFAzS1JWcUFMbXZTSzJWbUNrSVBJaHNheGJqQzZ1ak1BJCIK
Pgo+IFRoaXMgaXNzdWUgY29tZXMgd2hlbmV2ZXIgY3Jhc2hrZXJuZWwgbWVtb3J5IGlzIHJlc2Vy
dmVkIGFmdGVyIDB4YzAwMF8wMDAwLgo+IE1vcmUgZGV0YWlscyBkaXNjdXNzZWQgZWFybGllciBp
bgo+IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL3d3dy5zcGluaWNzLm5ldC9s
aXN0cy9hcm0ta2VybmVsL21zZzgwNjg4Mi5odG1sX187ISFHcWl2UFZhN0JyaW8hTG5UU0FSa0N0
MFYwRm96UjBLbXFvb2FINUFEdGRYdnMzbVBkUDNLUlZxQUxtdlNLMlZtQ2tJUEloc2F4YmpDNnVq
TUEkICB3aXRob3V0IGFueQo+IHNvbHV0aW9uCj4KPiBUaGlzIHBhdGNoLXNldCBpcyBleHBlY3Rl
ZCB0byBzb2x2ZSBzaW1pbGFyIGtpbmQgb2YgaXNzdWUuCj4gaS5lLiBsb3cgbWVtb3J5IGlzIG9u
bHkgdGFyZ2V0ZWQgZm9yIERNQSwgc3dpb3RsYjsgU28gYWJvdmUgbWVudGlvbmVkCj4gb2JzZXJ2
YXRpb24gc2hvdWxkIGJlIGNvbnNpZGVyZWQvZml4ZWQuIC4KPgo+IC0tcGsKPgo+IFsxXQo+IFsg
ICAzMC4zNjY2OTVdIERNSTogQ2F2aXVtIEluYy4gU2FiZXIvU2FiZXIsIEJJT1MKPiBUWDItRlct
UmVsZWFzZS0zLjEtYnVpbGRfMDEtMjgwMy1nNzQyNTNhNTQxYSBtbS9kZC95eXl5Cj4gWyAgIDMw
LjM2NzY5Nl0gTkVUOiBSZWdpc3RlcmVkIHByb3RvY29sIGZhbWlseSAxNgo+IFsgICAzMC4zNjk5
NzNdIHN3YXBwZXIvMDogcGFnZSBhbGxvY2F0aW9uIGZhaWx1cmU6IG9yZGVyOjYsCj4gbW9kZTow
eDEoR0ZQX0RNQSksIG5vZGVtYXNrPShudWxsKSxjcHVzZXQ9LyxtZW1zX2FsbG93ZWQ9MAo+IFsg
ICAzMC4zNjk5ODBdIENQVTogMCBQSUQ6IDEgQ29tbTogc3dhcHBlci8wIE5vdCB0YWludGVkIDUu
Ny4wLXJjMysgIzEyMQo+IFsgICAzMC4zNjk5ODFdIEhhcmR3YXJlIG5hbWU6IENhdml1bSBJbmMu
IFNhYmVyL1NhYmVyLCBCSU9TCj4gVFgyLUZXLVJlbGVhc2UtMy4xLWJ1aWxkXzAxLTI4MDMtZzc0
MjUzYTU0MWEgbW0vZGQveXl5eQo+IFsgICAzMC4zNjk5ODRdIENhbGwgdHJhY2U6Cj4gWyAgIDMw
LjM2OTk4OV0gIGR1bXBfYmFja3RyYWNlKzB4MC8weDFmOAo+IFsgICAzMC4zNjk5OTFdICBzaG93
X3N0YWNrKzB4MjAvMHgzMAo+IFsgICAzMC4zNjk5OTddICBkdW1wX3N0YWNrKzB4YzAvMHgxMGMK
PiBbICAgMzAuMzcwMDAxXSAgd2Fybl9hbGxvYysweDEwYy8weDE3OAo+IFsgICAzMC4zNzAwMDRd
ICBfX2FsbG9jX3BhZ2VzX3Nsb3dwYXRoLmNvbnN0cHJvcC4xMTErMHhiMTAvMHhiNTAKPiBbICAg
MzAuMzcwMDA2XSAgX19hbGxvY19wYWdlc19ub2RlbWFzaysweDJiNC8weDMwMAo+IFsgICAzMC4z
NzAwMDhdICBhbGxvY19wYWdlX2ludGVybGVhdmUrMHgyNC8weDk4Cj4gWyAgIDMwLjM3MDAxMV0g
IGFsbG9jX3BhZ2VzX2N1cnJlbnQrMHhlNC8weDEwOAo+IFsgICAzMC4zNzAwMTddICBkbWFfYXRv
bWljX3Bvb2xfaW5pdCsweDQ0LzB4MWE0Cj4gWyAgIDMwLjM3MDAyMF0gIGRvX29uZV9pbml0Y2Fs
bCsweDU0LzB4MjI4Cj4gWyAgIDMwLjM3MDAyN10gIGtlcm5lbF9pbml0X2ZyZWVhYmxlKzB4MjI4
LzB4MmNjCj4gWyAgIDMwLjM3MDAzMV0gIGtlcm5lbF9pbml0KzB4MWMvMHgxMTAKPiBbICAgMzAu
MzcwMDM0XSAgcmV0X2Zyb21fZm9yaysweDEwLzB4MTgKPiBbICAgMzAuMzcwMDM2XSBNZW0tSW5m
bzoKPiBbICAgMzAuMzcwMDY0XSBhY3RpdmVfYW5vbjowIGluYWN0aXZlX2Fub246MCBpc29sYXRl
ZF9hbm9uOjAKPiBbICAgMzAuMzcwMDY0XSAgYWN0aXZlX2ZpbGU6MCBpbmFjdGl2ZV9maWxlOjAg
aXNvbGF0ZWRfZmlsZTowCj4gWyAgIDMwLjM3MDA2NF0gIHVuZXZpY3RhYmxlOjAgZGlydHk6MCB3
cml0ZWJhY2s6MCB1bnN0YWJsZTowCj4gWyAgIDMwLjM3MDA2NF0gIHNsYWJfcmVjbGFpbWFibGU6
MzQgc2xhYl91bnJlY2xhaW1hYmxlOjQ0MzgKPiBbICAgMzAuMzcwMDY0XSAgbWFwcGVkOjAgc2ht
ZW06MCBwYWdldGFibGVzOjE0IGJvdW5jZTowCj4gWyAgIDMwLjM3MDA2NF0gIGZyZWU6MTUzNzcx
OSBmcmVlX3BjcDoyMTkgZnJlZV9jbWE6MAo+IFsgICAzMC4zNzAwNzBdIE5vZGUgMCBhY3RpdmVf
YW5vbjowa0IgaW5hY3RpdmVfYW5vbjowa0IKPiBhY3RpdmVfZmlsZTowa0IgaW5hY3RpdmVfZmls
ZTowa0IgdW5ldmljdGFibGU6MGtCIGlzb2xhdGVkKGFub24pOjBrQgo+IGlzb2xhdGVkKGZpbGUp
OjBrQiBtYXBwZWQ6MGtCIGRpcnR5OjBrQiB3cml0ZWJhY2s6MGtCIHNobWVtOjBrQgo+IHNobWVt
X3RocDogMGtCIHNobWVtX3BtZG1hcHBlZDogMGtCIGFub25fdGhwOiAwa0Igd3JpdGViYWNrX3Rt
cDowa0IKPiB1bnN0YWJsZTowa0IgYWxsX3VucmVjbGFpbWFibGU/IG5vCj4gWyAgIDMwLjM3MDA3
M10gTm9kZSAxIGFjdGl2ZV9hbm9uOjBrQiBpbmFjdGl2ZV9hbm9uOjBrQgo+IGFjdGl2ZV9maWxl
OjBrQiBpbmFjdGl2ZV9maWxlOjBrQiB1bmV2aWN0YWJsZTowa0IgaXNvbGF0ZWQoYW5vbik6MGtC
Cj4gaXNvbGF0ZWQoZmlsZSk6MGtCIG1hcHBlZDowa0IgZGlydHk6MGtCIHdyaXRlYmFjazowa0Ig
c2htZW06MGtCCj4gc2htZW1fdGhwOiAwa0Igc2htZW1fcG1kbWFwcGVkOiAwa0IgYW5vbl90aHA6
IDBrQiB3cml0ZWJhY2tfdG1wOjBrQgo+IHVuc3RhYmxlOjBrQiBhbGxfdW5yZWNsYWltYWJsZT8g
bm8KPiBbICAgMzAuMzcwMDc5XSBOb2RlIDAgRE1BIGZyZWU6MGtCIG1pbjowa0IgbG93OjBrQiBo
aWdoOjBrQgo+IHJlc2VydmVkX2hpZ2hhdG9taWM6MEtCIGFjdGl2ZV9hbm9uOjBrQiBpbmFjdGl2
ZV9hbm9uOjBrQgo+IGFjdGl2ZV9maWxlOjBrQiBpbmFjdGl2ZV9maWxlOjBrQiB1bmV2aWN0YWJs
ZTowa0Igd3JpdGVwZW5kaW5nOjBrQgo+IHByZXNlbnQ6MTI4a0IgbWFuYWdlZDowa0IgbWxvY2tl
ZDowa0Iga2VybmVsX3N0YWNrOjBrQiBwYWdldGFibGVzOjBrQgo+IGJvdW5jZTowa0IgZnJlZV9w
Y3A6MGtCIGxvY2FsX3BjcDowa0IgZnJlZV9jbWE6MGtCCj4gWyAgIDMwLjM3MDA4NF0gbG93bWVt
X3Jlc2VydmVbXTogMCAyNTAgNjA2MyA2MDYzCj4gWyAgIDMwLjM3MDA5MF0gTm9kZSAwIERNQTMy
IGZyZWU6MjU2MDAwa0IgbWluOjQwOGtCIGxvdzo2NjRrQgo+IGhpZ2g6OTIwa0IgcmVzZXJ2ZWRf
aGlnaGF0b21pYzowS0IgYWN0aXZlX2Fub246MGtCIGluYWN0aXZlX2Fub246MGtCCj4gYWN0aXZl
X2ZpbGU6MGtCIGluYWN0aXZlX2ZpbGU6MGtCIHVuZXZpY3RhYmxlOjBrQiB3cml0ZXBlbmRpbmc6
MGtCCj4gcHJlc2VudDoyNjk3MDBrQiBtYW5hZ2VkOjI1NjAwMGtCIG1sb2NrZWQ6MGtCIGtlcm5l
bF9zdGFjazowa0IKPiBwYWdldGFibGVzOjBrQiBib3VuY2U6MGtCIGZyZWVfcGNwOjBrQiBsb2Nh
bF9wY3A6MGtCIGZyZWVfY21hOjBrQgo+IFsgICAzMC4zNzAwOTRdIGxvd21lbV9yZXNlcnZlW106
IDAgMCA1ODEzIDU4MTMKPiBbICAgMzAuMzcwMTAwXSBOb2RlIDAgTm9ybWFsIGZyZWU6NTg5NDg3
NmtCIG1pbjo5NTUya0IgbG93OjE1NTA0a0IKPiBoaWdoOjIxNDU2a0IgcmVzZXJ2ZWRfaGlnaGF0
b21pYzowS0IgYWN0aXZlX2Fub246MGtCIGluYWN0aXZlX2Fub246MGtCCj4gYWN0aXZlX2ZpbGU6
MGtCIGluYWN0aXZlX2ZpbGU6MGtCIHVuZXZpY3RhYmxlOjBrQiB3cml0ZXBlbmRpbmc6MGtCCj4g
cHJlc2VudDo4Mzg4NjA4a0IgbWFuYWdlZDo1OTUzMTEya0IgbWxvY2tlZDowa0Iga2VybmVsX3N0
YWNrOjIxNjcya0IKPiBwYWdldGFibGVzOjU2a0IgYm91bmNlOjBrQiBmcmVlX3BjcDo4NzZrQiBs
b2NhbF9wY3A6MTc2a0IgZnJlZV9jbWE6MGtCCj4gWyAgIDMwLjM3MDEwNF0gbG93bWVtX3Jlc2Vy
dmVbXTogMCAwIDAgMAo+IFsgICAzMC4zNzAxMDddIE5vZGUgMCBETUE6IDAqNGtCIDAqOGtCIDAq
MTZrQiAwKjMya0IgMCo2NGtCIDAqMTI4a0IKPiAwKjI1NmtCIDAqNTEya0IgMCoxMDI0a0IgMCoy
MDQ4a0IgMCo0MDk2a0IgPSAwa0IKPiBbICAgMzAuMzcwMTEzXSBOb2RlIDAgRE1BMzI6IDAqNGtC
IDAqOGtCIDAqMTZrQiAwKjMya0IgMCo2NGtCIDAqMTI4a0IKPiAwKjI1NmtCIDAqNTEya0IgMCox
MDI0a0IgMSoyMDQ4a0IgKE0pIDYyKjQwOTZrQiAoTSkgPSAyNTYwMDBrQgo+IFsgICAzMC4zNzAx
MTldIE5vZGUgMCBOb3JtYWw6IDIqNGtCIChNKSAzKjhrQiAoTUUpIDIqMTZrQiAoVUUpIDMqMzJr
Qgo+IChVTSkgMSo2NGtCIChVKSAyKjEyOGtCIChNKSAyKjI1NmtCIChNRSkgMyo1MTJrQiAoTUUp
IDMqMTAyNGtCIChNRSkKPiAzKjIwNDhrQiAoVU1FKSAxNDM2KjQwOTZrQiAoTSkgPSA1ODkzNjAw
a0IKPiBbICAgMzAuMzcwMTI5XSBOb2RlIDAgaHVnZXBhZ2VzX3RvdGFsPTAgaHVnZXBhZ2VzX2Zy
ZWU9MAo+IGh1Z2VwYWdlc19zdXJwPTAgaHVnZXBhZ2VzX3NpemU9MTA0ODU3NmtCCj4gWyAgIDMw
LjM3MDEzMF0gMCB0b3RhbCBwYWdlY2FjaGUgcGFnZXMKPiBbICAgMzAuMzcwMTMyXSAwIHBhZ2Vz
IGluIHN3YXAgY2FjaGUKPiBbICAgMzAuMzcwMTM0XSBTd2FwIGNhY2hlIHN0YXRzOiBhZGQgMCwg
ZGVsZXRlIDAsIGZpbmQgMC8wCj4gWyAgIDMwLjM3MDEzNV0gRnJlZSBzd2FwICA9IDBrQgo+IFsg
ICAzMC4zNzAxMzZdIFRvdGFsIHN3YXAgPSAwa0IKPiBbICAgMzAuMzcwMTM3XSAyMTY0NjA5IHBh
Z2VzIFJBTQo+IFsgICAzMC4zNzAxMzldIDAgcGFnZXMgSGlnaE1lbS9Nb3ZhYmxlT25seQo+IFsg
ICAzMC4zNzAxNDBdIDYxMjMzMSBwYWdlcyByZXNlcnZlZAo+IFsgICAzMC4zNzAxNDFdIDAgcGFn
ZXMgaHdwb2lzb25lZAo+IFsgICAzMC4zNzAxNDNdIERNQTogZmFpbGVkIHRvIGFsbG9jYXRlIDI1
NiBLaUIgcG9vbCBmb3IgYXRvbWljCj4gY29oZXJlbnQgYWxsb2NhdGlvbgoKCkR1cmluZyBteSB0
ZXN0aW5nIEkgc2F3IHRoZSBzYW1lIGVycm9yIGFuZCBDaGVuJ3PCoCBzb2x1dGlvbiBjb3JyZWN0
ZWQgaXQgLgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
