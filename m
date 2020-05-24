Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B79C71DFC9B
	for <lists+kexec@lfdr.de>; Sun, 24 May 2020 04:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZRgKqgNt37Y51DlPFp16kJqb6ujzTXhfi+f1vEy0do=; b=sibfNCE+ub4v9+
	wMTzA6feD0h9oK3k/k6dSWql7lgEhMqDAyUQ7/gNcXKbCGmTFX3c3U4sV8eupmxC2QqycUZcEgvY5
	afWtX0V8JVMw5trpuRrCsEZ5C1bKs3R/SJ2JUkuLupP+KX2vFumk0y5IrF5mqqpR+rK+E2y7iBeVY
	0G4YUSvvddm2w+PDBgRgJqF5GlTw/GE9IdDrjH+CpotStrBoKYuCjm2pItHjN74MhX7sPuTYd4zy7
	w6KLdbqN0QRwSKKpJXk6ctouNxWiBlFxQaBX5JikiP5C+3gWLhvPGNYdQUTINaktv03BeSTETWmb7
	emJk3FN2prnFVmg1alng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcgm6-0003qD-W1; Sun, 24 May 2020 02:54:06 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcglh-0003pk-UE
 for kexec@lists.infradead.org; Sun, 24 May 2020 02:53:43 +0000
Received: from pps.filterd (m0127361.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04O2WueA118978; Sat, 23 May 2020 22:52:25 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 316xn3hqc0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 23 May 2020 22:52:25 -0400
Received: from m0127361.ppops.net (m0127361.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 04O2XQhe120524;
 Sat, 23 May 2020 22:52:24 -0400
Received: from ppma01fra.de.ibm.com (46.49.7a9f.ip4.static.sl-reverse.com
 [159.122.73.70])
 by mx0a-001b2d01.pphosted.com with ESMTP id 316xn3hqbk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 23 May 2020 22:52:24 -0400
Received: from pps.filterd (ppma01fra.de.ibm.com [127.0.0.1])
 by ppma01fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 04O2pcoi020197;
 Sun, 24 May 2020 02:52:23 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com
 (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
 by ppma01fra.de.ibm.com with ESMTP id 316uf8gmuw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 24 May 2020 02:52:22 +0000
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 04O2p6C066060664
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 24 May 2020 02:51:07 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E7F6311C050;
 Sun, 24 May 2020 02:52:19 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 398BE11C04C;
 Sun, 24 May 2020 02:52:17 +0000 (GMT)
Received: from localhost.localdomain (unknown [9.80.203.161])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Sun, 24 May 2020 02:52:17 +0000 (GMT)
Message-ID: <1590288736.5111.431.camel@linux.ibm.com>
Subject: Re: [PATCH 0/3] fs: reduce export usage of kerne_read*() calls
From: Mimi Zohar <zohar@linux.ibm.com>
To: Scott Branden <scott.branden@broadcom.com>, Kees Cook
 <keescook@chromium.org>
Date: Sat, 23 May 2020 22:52:16 -0400
In-Reply-To: <c48a80f5-a09c-6747-3db8-be23a260a0cb@broadcom.com>
References: <20200513152108.25669-1-mcgrof@kernel.org>
 <20200513181736.GA24342@infradead.org>
 <20200515212933.GD11244@42.do-not-panic.com>
 <20200518062255.GB15641@infradead.org>
 <1589805462.5111.107.camel@linux.ibm.com>
 <7525ca03-def7-dfe2-80a9-25270cb0ae05@broadcom.com>
 <202005221551.5CA1372@keescook>
 <c48a80f5-a09c-6747-3db8-be23a260a0cb@broadcom.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-23_14:2020-05-22,
 2020-05-23 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 lowpriorityscore=0 cotscore=-2147483648 phishscore=0 spamscore=0
 mlxscore=0 mlxlogscore=999 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005240020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_195342_089609_261A1A28 
X-CRM114-Status: GOOD (  30.45  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: rafael@kernel.org, dhowells@redhat.com,
 linux-security-module@vger.kernel.org, paul@paul-moore.com,
 nayna@linux.ibm.com, jmorris@namei.org, Christoph Hellwig <hch@infradead.org>,
 geert@linux-m68k.org, dan.carpenter@oracle.com, selinux@vger.kernel.org,
 viro@zeniv.linux.org.uk, skhan@linuxfoundation.org, eparis@parisplace.org,
 tglx@linutronix.de, gregkh@linuxfoundation.org, stephen.smalley.work@gmail.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, ebiederm@xmission.com, jeyu@kernel.org,
 linux-fsdevel@vger.kernel.org, linux-integrity@vger.kernel.org,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDIwLTA1LTIyIGF0IDE2OjI1IC0wNzAwLCBTY290dCBCcmFuZGVuIHdyb3RlOgo+
IEhpIEtlZXMsCj4gCj4gT24gMjAyMC0wNS0yMiA0OjA0IHAubS4sIEtlZXMgQ29vayB3cm90ZToK
PiA+IE9uIEZyaSwgTWF5IDIyLCAyMDIwIGF0IDAzOjI0OjMyUE0gLTA3MDAsIFNjb3R0IEJyYW5k
ZW4gd3JvdGU6Cj4gPj4gT24gMjAyMC0wNS0xOCA1OjM3IGEubS4sIE1pbWkgWm9oYXIgd3JvdGU6
Cj4gPj4+IE9uIFN1biwgMjAyMC0wNS0xNyBhdCAyMzoyMiAtMDcwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gPj4+PiBPbiBGcmksIE1heSAxNSwgMjAyMCBhdCAwOToyOTozM1BNICswMDAw
LCBMdWlzIENoYW1iZXJsYWluIHdyb3RlOgo+ID4+Pj4+IE9uIFdlZCwgTWF5IDEzLCAyMDIwIGF0
IDExOjE3OjM2QU0gLTA3MDAsIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+ID4+Pj4+PiBDYW4g
eW91IGFsc28gbW92ZSBrZXJuZWxfcmVhZF8qIG91dCBvZiBmcy5oPyAgVGhhdCBoZWFkZXIgZ2V0
cyBwdWxsZWQKPiA+Pj4+Pj4gaW4ganVzdCBhYm91dCBldmVyeXdoZXJlIGFuZCBkb2Vzbid0IHJl
YWxseSBuZWVkIGZ1bmN0aW9uIG5vdCByZWxhdGVkCj4gPj4+Pj4+IHRvIHRoZSBnZW5lcmFsIGZz
IGludGVyZmFjZS4KPiA+Pj4+PiBTdXJlLCB3aGVyZSBzaG91bGQgSSBkdW1wIHRoZXNlPwo+ID4+
Pj4gTWF5YmUgYSBuZXcgbGludXgva2VybmVsX3JlYWRfZmlsZS5oPyAgQm9udXMgcG9pbnRzIGZv
ciBhIHNtYWxsIHRvcAo+ID4+Pj4gb2YgdGhlIGZpbGUgY29tbWVudCBleHBsYWluaW5nIHRoZSBw
b2ludCBvZiB0aGUgaW50ZXJmYWNlLCB3aGljaCBJCj4gPj4+PiBzdGlsbCBkb24ndCBnZXQgOikK
PiA+Pj4gSW5zdGVhZCBvZiByb2xsaW5nIHlvdXIgb3duIG1ldGhvZCBvZiBoYXZpbmcgdGhlIGtl
cm5lbCByZWFkIGEgZmlsZSwKPiA+Pj4gd2hpY2ggcmVxdWlyZXMgY2FsbCBzcGVjaWZpYyBzZWN1
cml0eSBob29rcywgdGhpcyBpbnRlcmZhY2UgcHJvdmlkZXMgYQo+ID4+PiBzaW5nbGUgZ2VuZXJp
YyBzZXQgb2YgcHJlIGFuZCBwb3N0IHNlY3VyaXR5IGhvb2tzLsKgwqBUaGUKPiA+Pj4ga2VybmVs
X3JlYWRfZmlsZV9pZCBlbnVtZXJhdGlvbiBwZXJtaXRzIHRoZSBzZWN1cml0eSBob29rIHRvCj4g
Pj4+IGRpZmZlcmVudGlhdGUgYmV0d2VlbiBjYWxsZXJzLgo+ID4+Pgo+ID4+PiBUbyBjb21wbHkg
d2l0aCBzZWN1cmUgYW5kIHRydXN0ZWQgYm9vdCBjb25jZXB0cywgYSBmaWxlIGNhbm5vdCBiZQo+
ID4+PiBhY2Nlc3NpYmxlIHRvIHRoZSBjYWxsZXIgdW50aWwgYWZ0ZXIgaXQgaGFzIGJlZW4gbWVh
c3VyZWQgYW5kL29yIHRoZQo+ID4+PiBpbnRlZ3JpdHkgKGhhc2gvc2lnbmF0dXJlKSBhcHByYWlz
ZWQuCj4gPj4+Cj4gPj4+IEluIHNvbWUgY2FzZXMsIHRoZSBmaWxlIHdhcyBwcmV2aW91c2x5IHJl
YWQgdHdpY2UsIGZpcnN0IHRvIG1lYXN1cmUKPiA+Pj4gYW5kL29yIGFwcHJhaXNlIHRoZSBmaWxl
IGFuZCB0aGVuIHJlYWQgYWdhaW4gaW50byBhIGJ1ZmZlciBmb3IKPiA+Pj4gdXNlLsKgwqBUaGlz
IGludGVyZmFjZSByZWFkcyB0aGUgZmlsZSBpbnRvIGEgYnVmZmVyIG9uY2UsIGNhbGxzIHRoZQo+
ID4+PiBnZW5lcmljIHBvc3Qgc2VjdXJpdHkgaG9vaywgYmVmb3JlIHByb3ZpZGluZyB0aGUgYnVm
ZmVyIHRvIHRoZSBjYWxsZXIuCj4gPj4+ICAgwqAoTm90ZSB1c2luZyBmaXJtd2FyZSBwcmUtYWxs
b2NhdGVkIG1lbW9yeSBtaWdodCBiZSBhbiBpc3N1ZS4pCj4gPj4+Cj4gPj4+IFBhcnRpYWwgcmVh
ZGluZyBmaXJtd2FyZSB3aWxsIHJlc3VsdCBpbiBuZWVkaW5nIHRvIHByZS1yZWFkIHRoZSBlbnRp
cmUKPiA+Pj4gZmlsZSwgbW9zdCBsaWtlbHkgb24gdGhlIHNlY3VyaXR5IHByZSBob29rLgo+ID4+
IFRoZSBlbnRpcmUgZmlsZSBtYXkgYmUgdmVyeSBsYXJnZSBhbmQgbm90IGZpdCBpbnRvIGEgYnVm
ZmVyLgo+ID4+IEhlbmNlIG9uZSBvZiB0aGUgcmVhc29ucyBmb3IgYSBwYXJ0aWFsIHJlYWQgb2Yg
dGhlIGZpbGUuCj4gPj4gRm9yIHNlY3VyaXR5IHB1cnBvc2VzLCB5b3UgbmVlZCB0byBjaGFuZ2Ug
eW91ciBjb2RlIHRvIGxpbWl0IHRoZSBhbW91bnQKPiA+PiBvZiBkYXRhIGl0IHJlYWRzIGludG8g
YSBidWZmZXIgYXQgb25lIHRpbWUgdG8gbm90IGNvbnN1bWUgb3IgcnVuIG91dCBvZiBtdWNoCj4g
Pj4gbWVtb3J5Lgo+ID4gSG0/IFRoYXQncyBub3QgaG93IHdob2xlLWZpbGUgaGFzaGluZyB3b3Jr
cy4gOikKPiAKPiA+Cj4gPiBUaGVzZSBob29rcyBuZWVkIHRvIGZpbmlzaCB0aGVpciBoYXNoaW5n
IGFuZCBwb2xpY3kgY2hlY2tpbmcgYmVmb3JlIHRoZXkKPiA+IGNhbiBhbGxvdyB0aGUgcmVzdCBv
ZiB0aGUgY29kZSB0byBtb3ZlIGZvcndhcmQuIChUaGF0J3Mgd2h5IGl0J3MgYQo+ID4gc2VjdXJp
dHkgaG9vay4pIElmIGtlcm5lbCBtZW1vcnkgdXRpbGl6YXRpb24gaXMgdGhlIHByaW1hcnkgY29u
Y2VybiwKPiA+IHRoZW4gc3VyZSwgdGhpbmdzIGNvdWxkIGJlIHJlYXJyYW5nZWQgdG8gZG8gcGFy
dGlhbCByZWFkIGFuZCB1cGRhdGUgdGhlCj4gPiBoYXNoIGluY3JlbWVudGFsbHksIGJ1dCB0aGUg
ZW50aXJlIGZpbGUgc3RpbGwgbmVlZHMgdG8gYmUgbG9ja2VkLAo+ID4gZW50aXJlbHkgaGFzaGVk
IGJ5IGhvb2ssIHRoZW4gcmVhZCBieSB0aGUgY2FsbGVyLCB0aGVuIHVubG9ja2VkIGFuZAo+ID4g
cmVsZWFzZWQuCgpFeGFjdGx5LgoKPiA+Cj4gPiBTbywgaWYgeW91IHdhbnQgdG8gaGF2ZSBwYXJ0
aWFsIGZpbGUgcmVhZHMgd29yaywgeW91J2xsIG5lZWQgdG8KPiA+IHJlYXJjaGl0ZWN0IHRoZSB3
YXkgdGhpcyB3b3JrcyB0byBhdm9pZCByZWdyZXNzaW5nIHRoZSBzZWN1cml0eSBjb3ZlcmFnZQo+
ID4gb2YgdGhlc2Ugb3BlcmF0aW9ucy4KPiBJIGFtIG5vdCBmYW1pbGlhciB3aXRoIGhvdyB0aGUg
c2VjdXJpdHkgaGFuZGxpbmcgY29kZSB3b3JrcyBhdCBhbGwuCj4gSXMgdGhlIHNhbWUgc2VjdXJp
dHkgY2hlY2sgcnVuIG9uIGZpbGVzIG9wZW5lZCBmcm9tIHVzZXIgc3BhY2U/Cj4gQSBmaWxlIGNv
dWxkIGJlIGh1Z2UuCj4gCj4gSWYgaXQgYXNzdW1lcyB0aGVyZSBpcyB0aGVyZSBpcyBlbm91Z2gg
bWVtb3J5IGF2YWlsYWJsZSB0byByZWFkIHRoZSAKPiBlbnRpcmUgZmlsZSBpbnRvIGtlcm5lbCBz
cGFjZSB0aGVuIHRoZSBpbXByb3ZlbWVudCBiZWxvdyBjYW4gYmUgbGVmdCBhcwo+IGEgbWVtb3J5
IG9wdGltaXphdGlvbiB0byBiZSBkb25lIGluIGFuIGluZGVwZW5kZW50IChvciBmdXR1cmUpIHBh
dGNoIHNlcmllcy4KClRoZXJlIGFyZSB0d28gc2VjdXJpdHkgaG9va3MgLSBzZWN1cml0eV9rZXJu
ZWxfcmVhZF9maWxlKCksCnNlY3VyaXR5X2tlcm5lbF9wb3N0X3JlYWRfZmlsZSAtIGluIGtlcm5l
bF9yZWFkX2ZpbGUoKS4gwqBUaGUgZmlyc3QKaG9vayBpcyBjYWxsZWQgYmVmb3JlIHRoZSBmaWxl
IGlzIHJlYWQgaW50byBhIGJ1ZmZlciwgd2hpbGUgdGhlIHNlY29uZApob29rIGlzIGNhbGxlZCBh
ZnRlcndhcmRzLgoKRm9yIHBhcnRpYWwgcmVhZHMsIG1lYXN1cmluZyB0aGUgZmlybXdhcmUgYW5k
IHZlcmlmeWluZyB0aGUgZmlybXdhcmUncwpzaWduYXR1cmUgd2lsbCBuZWVkIHRvIGJlIGRvbmUg
b24gdGhlIHNlY3VyaXR5X2tlcm5lbF9yZWFkX2ZpbGUoKQpob29rLgoKPiAKPiA+IFNvLCBwcm9i
YWJseSwgdGhlIGNvZGUgd2lsbCBsb29rIHNvbWV0aGluZyBsaWtlOgo+ID4KPiA+Cj4gPiBmaWxl
ID0ga2VybmVsX29wZW5fZmlsZV9mb3JfcmVhZGluZyguLi4pCj4gPiAJZmlsZSA9IG9wZW4uLi4K
PiA+IAlkaXNhbGxvd193cml0ZXMoZmlsZSk7Cj4gPiAJd2hpbGUgKHByb2Nlc3NlZCA8IHNpemUt
b2YtZmlsZSkgewo+ID4gCQlidWYgPSByZWFkKGZpbGUsIHNpemUuLi4pCj4gPiAJCXNlY3VyaXR5
X2ZpbGVfcmVhZF9wYXJ0aWFsKGJ1ZikKPiA+IAl9Cj4gPiAJcmV0ID0gc2VjdXJpdHlfZmlsZV9y
ZWFkX2ZpbmlzaGVkKGZpbGUpOwo+ID4gCWlmIChyZXQgPCAwKSB7Cj4gPiAJCWFsbG93X3dyaXRl
cyhmaWxlKTsKPiA+IAkJcmV0dXJuIFBUUl9FUlIocmV0KTsKPiA+IAl9Cj4gPiAJcmV0dXJuIGZp
bGU7Cj4gPgo+ID4gd2hpbGUgKHByb2Nlc3NlZCA8IHNpemUtb2YtZmlsZSkgewo+ID4gCWJ1ZiA9
IHJlYWQoZmlsZSwgc2l6ZS4uLikKPiA+IAlmaXJtd2FyZV9zZW5kX3BhcnRpYWwoYnVmKTsKPiA+
IH0KPiA+Cj4gPiBrZXJuZWxfY2xvc2VfZmlsZV9mb3JfcmVhZGluZyhmaWxlKQo+ID4gCWFsbG93
X3dyaXRlcyhmaWxlKTsKClJpZ2h0LCB0aGUgaW1hX2ZpbGVfbW1hcCgpLCBpbWFfYnBybV9jaGVj
aygpLCBhbmQgaW1hX2ZpbGVfY2hlY2soKQpob29rcyBjYWxsIHByb2Nlc3NfbWVhc3VyZW1lbnQo
KSB0byBkbyB0aGlzLiDCoGltYV9wb3N0X3JlYWRfZmlsZSgpCnBhc3NlcyBhIGJ1ZmZlciB0byBw
cm9jZXNzX21lYXN1cmVtZW50KCkgaW5zdGVhZC4KClNjb3R0LCB0aGUgY2hhbmdlIHNob3VsZCBi
ZSBzdHJhaWdodCBmb3J3YXJkLiDCoFRoZSBhZGRpdGlvbmFsIHBhdGNoCm5lZWRzIHRvOgotIGRl
ZmluZSBhIG5ldyBrZXJuZWxfcmVhZF9maWxlX2lkIGVudW1lcmF0aW9uLCBsaWtlCkZJUk1XQVJF
X1BBUlRJQUxfUkVBRC4KLSBDdXJyZW50bHkgaW1hX3JlYWRfZmlsZSgpIGhhcyBhIGNvbW1lbnQg
YWJvdXQgcHJlLWFsbG9jYXRlZCBmaXJtd2FyZQpidWZmZXJzLiDCoFVwZGF0ZSBpbWFfcmVhZF9m
aWxlKCkgdG8gY2FsbCBwcm9jZXNzX21lYXN1cmVtZW50KCkgZm9yIHRoZQpuZXcgZW51bWVyYXRp
b24gRklSTVdBUkVfUEFSVElBTF9SRUFEIGFuZCB1cGRhdGUgaW1hX3Bvc3RfcmVhZF9maWxlKCkK
dG8gcmV0dXJuIGltbWVkaWF0ZWx5LgoKVGhlIGJ1aWx0LWluIElNQSBtZWFzdXJlbWVudCBwb2xp
Y3kgY29udGFpbnMgYSBydWxlIHRvIG1lYXN1cmUKZmlybXdhcmUuIMKgVGhlIHBvbGljeSBjYW4g
YmUgc3BlY2lmaWVkIG9uIHRoZSBib290IGNvbW1hbmQgbGluZSBieQpzcGVjaWZ5aW5nICJpbWFf
cG9saWN5PXRjYiIuIMKgQWZ0ZXIgcmVhZGluZyB0aGUgZmlybXdhcmUsIHRoZSBmaXJtd2FyZQpt
ZWFzdXJlbWVudCBzaG91bGQgYmUgaW4gPHNlY3VyaXR5ZnM+L2ltYS9hc2NpaV9ydW50aW1lX21l
YXN1cmVtZW50cy4KCnRoYW5rcywKCk1pbWkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
