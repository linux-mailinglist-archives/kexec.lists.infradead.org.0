Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D741251AF
	for <lists+kexec@lfdr.de>; Wed, 18 Dec 2019 20:18:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KuZ+8eqtrSFxZ0j8ve6+Jmm8v9OgXHqu4ue7IYTZjiE=; b=S8BsPtk+FPn1rU
	fhcuMECSUxJJeZxcmiPUcIh6naHfadRr2qB1fEaIEqH0zC7a2LiruUpl6DgDLGfEudT+/u6DXuy6T
	Ccxh0zKc6GQs5kVN8Lap7hNv1l39DrEuYyklrdY/lCnsVzweTGpdWPY69iIeX0W1E6A2qOTxLpPB2
	8nm8PGqufvRr71wHMLAktQbQU2vpbTReZjsRiLCQ7TzwANDkooFuvdXVd4E5srM72VZL5ownlX64p
	TnHBxW3jrhT7k01s8jQAflH7uxAq8IdySbyDGWrJc1IISWG/yZkq2ccosL2S0x3mwKO9pDmzWkWD5
	UtEaLo9VvgNO4TLB10LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iheq4-00052a-MQ; Wed, 18 Dec 2019 19:18:28 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iheq0-00052F-7k
 for kexec@lists.infradead.org; Wed, 18 Dec 2019 19:18:27 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBIJEAcQ130292;
 Wed, 18 Dec 2019 19:18:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=SAtcNRWM90ECkPnUMs32zf1ShoQLTS32f7eyPgKZtLk=;
 b=B4tobgeBbmhJMujYJhv3RZ+aq3C4z4ORCMoi+x4kxInoDr6Xw8gNdZMBVxspsi7aV/xM
 /ldr9VpN+WfkqAGczqloa9awoT60ufPeRZE7XeTdc9Fieomdk8OD3xYJeTx9r6f4bGwZ
 SX+zId594NHblwu2CMseR/ahwaMxKjILV7I5b4Uq+cZC4795IDYAI+VUhtdGPpJUIdT4
 ZR1JWdYiw9KlOOi9wMEh3+iHc99uL7QUy1uhrMfpF6RS1ybq6MNqdiQvlCtXyaN6DzoF
 x7Xzy+6IjN95tqGxJEgofEBAVeWPtm2M8tqKWPKUjeoepGf9ciVdpWIR1OzCnAwUp0bK Sg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2wvq5uqt8v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Dec 2019 19:18:22 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBIJELme141381;
 Wed, 18 Dec 2019 19:16:22 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2wyk3bnck2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Dec 2019 19:16:22 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xBIJGLuG015920;
 Wed, 18 Dec 2019 19:16:21 GMT
Received: from dhcp-10-154-159-47.vpn.oracle.com (/10.154.159.47)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 18 Dec 2019 11:16:21 -0800
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [RFC] printing the final constructed kernel command line
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <319db0e3-0e1b-bd5b-e751-8750bae1456d@oracle.com>
Date: Wed, 18 Dec 2019 13:16:19 -0600
Message-Id: <8E0B5DF6-C256-4B34-B75B-65BA88ABFC92@oracle.com>
References: <056beee8-6caf-1aec-a111-1d0c37bcb137@oracle.com>
 <4bb55b9c-1585-4d5a-2bd7-ec40b8fd0eed@redhat.com>
 <319db0e3-0e1b-bd5b-e751-8750bae1456d@oracle.com>
To: Eric DeVolder <eric.devolder@oracle.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9475
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912180149
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9475
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912180149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_111824_370405_55E056EC 
X-CRM114-Status: GOOD (  25.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bhupesh Sharma <bhsharma@redhat.com>,
 "bhupesh.linux >> Bhupesh SHARMA" <bhupesh.linux@gmail.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Cgo+IE9uIERlYyAxOCwgMjAxOSwgYXQgMTowMCBQTSwgRXJpYyBEZVZvbGRlciA8ZXJpYy5kZXZv
bGRlckBvcmFjbGUuY29tPiB3cm90ZToKPiAKPiBUaGFua3MgQmh1cGVzaCBmb3IgdGhlIGZlZWRi
YWNrLCByZXNwb25zZXMgYmVsb3chCj4gZXJpYwo+IAo+IE9uIDEyLzE3LzE5IDE6NTkgUE0sIEJo
dXBlc2ggU2hhcm1hIHdyb3RlOgo+PiBIaSBFcmljLAo+PiBPbiAxMi8xNy8yMDE5IDAyOjAyIEFN
LCBFcmljIERlVm9sZGVyIHdyb3RlOgo+Pj4gVGhlIC0tY29tbWFuZC1saW5lLCAtLWFwcGVuZCwg
YW5kIC0tcmV1c2UtY21kbGluZSBvcHRpb25zIHRvIGtleGVjIGNhbgo+Pj4gYmUgdXNlZCBpbiBj
b21iaW5hdGlvbiB0byBjcmFmdCBhIGtlcm5lbCBjb21tYW5kIGxpbmUgZm9yIGEga2VybmVsCj4+
PiBsb2FkZWQgdmlhIGtleGVjLiBJbiBhZGRpdGlvbiwgdGhlIGtleGVjIHRvb2wgbWF5IGFsc28g
bWFuaXB1bGF0ZQo+Pj4gZnVydGhlciB0aGUgY29tbWFuZCBsaW5lLCBlZy4gIGVsZmNvcmVoZHIg
YWRkaXRpb24uCj4+IFRoYW5rcyBmb3IgcHJvcG9zaW5nIHRoaXMgY2hhbmdlLiBJIGhhdmUgc29t
ZSBjb21tZW50cy9xdWVyaWVzIChzZWUgYmVsb3cpLgo+Pj4gVG8gYWlkIGluIGRlYnVnZ2luZyBr
ZHVtcC9rZXhlYyByZWxhdGVkIGlzc3VlcywgaXQgd291bGQgYmUgaGVscGZ1bAo+Pj4gZm9yIGtl
eGVjIHRvIHByaW50IHRoZSBmaW5hbCBjb25zdHJ1Y3RlZCBrZXJuZWwgY29tbWFuZCBsaW5lIGFy
Z3VtZW50Lgo+Pj4gCj4+PiBGb3IgZXhhbXBsZSwgdGhlIGZvbGxvd2luZyBzaW1wbGUgY2hhbmdl
IChmb3IgaTM4Ni94ODZfNjQpOgo+Pj4gCj4+PiBkaWZmIC0tZ2l0IGEva2V4ZWMvYXJjaC9pMzg2
L3g4Ni1saW51eC1zZXR1cC5jIGIva2V4ZWMvYXJjaC9pMzg2L3g4Ni1saW51eC1zZXR1cC5jCj4+
PiBpbmRleCAwNTdlZTE0Li42ZGM0YWRjIDEwMDY0NAo+Pj4gLS0tIGEva2V4ZWMvYXJjaC9pMzg2
L3g4Ni1saW51eC1zZXR1cC5jCj4+PiArKysgYi9rZXhlYy9hcmNoL2kzODYveDg2LWxpbnV4LXNl
dHVwLmMKPj4+IEBAIC01Nyw2ICs1Nyw4IEBAIHZvaWQgc2V0dXBfbGludXhfYm9vdGxvYWRlcl9w
YXJhbWV0ZXJzX2hpZ2goCj4+PiAgICAgICBjaGFyICpjbWRsaW5lX3B0cjsKPj4+ICAgICAgIHVu
c2lnbmVkIGxvbmcgaW5pdHJkX2Jhc2UsIGluaXRyZF9hZGRyX21heDsKPj4+IAo+Pj4gKyAgICBw
cmludGYoIkZpbmFsIGtlcm5lbCBjbWRsaW5lOiAnJXMnXG4iLCBjbWRsaW5lKTsKPj4+ICsKPj4g
SWYgd2Ugd2FudCB0byBhZGQgdGhpcyBmb3IgZGVidWdnaW5nIHB1cnBvc2VzLCBpdHMgYmV0dGVy
IHRvIGhhdmUgZGJncHJpbnRmKCkgaW5zdGVhZCBvZiBwcmludGYoKSBoZXJlLiBUaGlzIHdpbGwg
bWFrZSBzdXJlIHRoYXQgdGhlIGRlYnVnIG1lc3NhZ2UgaXMgcHJpbnRlZCBvbmx5IHdoZW4gJy1k
JyBmbGFnIGlzIHNwZWNpZmllZCB3aGlsZSBjYWxsaW5nIGtleGVjIHV0aWxpdHkgZnJvbSBjb21t
YW5kLWxpbmUuCj4gCj4gWWVzISBJIHVzZWQgcHJpbnRmKCkgbWVyZWx5IHRvIHByb3ZpZGUgYW4g
ZXhhbXBsZSBvZiB3aGF0IGlzIHBvc3NpYmxlLgo+IAo+Pj4gICAgICAgLyogU2F5IEknbSBhIGJv
b3QgbG9hZGVyICovCj4+PiAgICAgICByZWFsX21vZGUtPmxvYWRlcl90eXBlID0gTE9BREVSX1RZ
UEVfS0VYRUMgPDwgNDsKPj4+IAo+Pj4gcmVzdWx0cyBpbiB0aGUgZm9sbG93aW5nIG9uIGEgc3lz
dGVtZC1iYXNlZCBzeXN0ZW0gKGZvcm1hdHRlZCB0byBmaXQKPj4+IGluIDcwIGNoYXIgbGluZXMp
Ogo+Pj4gCj4+PiAlIHN5c3RlbWN0bCBzdGF0dXMgLWwga2R1bXAuc2VydmljZQo+Pj4g4pePIGtk
dW1wLnNlcnZpY2UgLSBDcmFzaCByZWNvdmVyeSBrZXJuZWwgYXJtaW5nCj4+PiAgICAgTG9hZGVk
OiBsb2FkZWQgKC91c3IvbGliL3N5c3RlbWQvc3lzdGVtL2tkdW1wLnNlcnZpY2U7IGVuYWJsZWQ7
Cj4+PiAgICAgIHZlbmRvciBwcmVzZXQ6IGVuYWJsZWQpCj4+PiAgICAgQWN0aXZlOiBhY3RpdmUg
KGV4aXRlZCkgc2luY2UgTW9uIDIwMTktMTItMTYgMTQ6NTk6MjEgRVNUOwo+Pj4gICAgICAybWlu
IDUzcyBhZ28KPj4+ICAgIFByb2Nlc3M6IDE0MDU4IEV4ZWNTdG9wPS91c3IvYmluL2tkdW1wY3Rs
IHN0b3AgKGNvZGU9ZXhpdGVkLAo+Pj4gICAgIHN0YXR1cz0wL1NVQ0NFU1MpCj4+PiAgICBQcm9j
ZXNzOiAxNDA3MyBFeGVjU3RhcnQ9L3Vzci9iaW4va2R1bXBjdGwgc3RhcnQgKGNvZGU9ZXhpdGVk
LAo+Pj4gICAgIHN0YXR1cz0wL1NVQ0NFU1MpCj4+PiAgIE1haW4gUElEOiAxNDA3MyAoY29kZT1l
eGl0ZWQsIHN0YXR1cz0wL1NVQ0NFU1MpCj4+PiAKPj4+IERlYyAxNiAxNDo1OToxOCB2bTM2NCBr
ZHVtcGN0bFsxNDA1OF06IFN0b3BwaW5nIGtkdW1wOiBbT0tdCj4+PiBEZWMgMTYgMTQ6NTk6MTgg
dm0zNjQgc3lzdGVtZFsxXTogU3RvcHBlZCBDcmFzaCByZWNvdmVyeSBrZXJuZWwgYXJtaW5nLgo+
Pj4gRGVjIDE2IDE0OjU5OjE4IHZtMzY0IHN5c3RlbWRbMV06IFN0YXJ0aW5nIENyYXNoIHJlY292
ZXJ5IGtlcm5lbCBhcm1pbmcuLi4KPj4+IERlYyAxNiAxNDo1OToyMSB2bTM2NCBrZHVtcGN0bFsx
NDA3M106IEZpbmFsIGtlcm5lbCBjbWRsaW5lOiAnQk9PVF9JTUFHRT0KPj4+ICAgL3ZtbGludXot
NC4xNC4zNS0xOTAyLjcuMy4xLmVsN3Vlay54ODZfNjQgcm8gcmhnYiBxdWlldCBMQU5HPWVuX1VT
LlVURi04Cj4+PiAgIGlycXBvbGwgbnJfY3B1cz0xIHJlc2V0X2RldmljZXMgY2dyb3VwX2Rpc2Fi
bGU9bWVtb3J5IG1jZT1vZmYgbnVtYT1vZmYKPj4+ICAgdWRldi5jaGlsZHJlbi1tYXg9MiBwYW5p
Yz0xMCByb290ZmxhZ3M9bm9mYWlsIGFjcGlfbm9fbWVtaG90cGx1Zwo+Pj4gICB0cmFuc3BhcmVu
dF9odWdlcGFnZT1uZXZlciBub2thc2xyIG5vdm1jb3JlZGQgZGlzYWJsZV9jcHVfYXBpY2lkPTAK
Pj4+ICAgZWxmY29yZWhkcj05MDE0OTJLJwo+Pj4gRGVjIDE2IDE0OjU5OjIxIHZtMzY0IHN5c3Rl
bWRbMV06IFN0YXJ0ZWQgQ3Jhc2ggcmVjb3Zlcnkga2VybmVsIGFybWluZy4KPj4+IERlYyAxNiAx
NDo1OToyMSB2bTM2NCBrZHVtcGN0bFsxNDA3M106IGtleGVjOiBsb2FkZWQga2R1bXAga2VybmVs
Cj4+PiBEZWMgMTYgMTQ6NTk6MjEgdm0zNjQga2R1bXBjdGxbMTQwNzNdOiBTdGFydGluZyBrZHVt
cDogW09LXQo+Pj4gCj4+PiBhbmQgdGhlIG91dHB1dCBpcyBhbHNvIGF2YWlsYWJsZSBpbiAvdmFy
L2xvZy9tZXNzYWdlcy4KPj4gU2luY2Uga2R1bXBjdGwgaXMgYSBkaXN0cmlidXRpb24gc3BlY2lm
aWMgc2NyaXB0IChVc2VkIGJ5IEZlZG9yYS9SSEVMKSwgd2hpY2ggaW52b2tlcyAna2V4ZWMnIHVu
ZGVyIHRoZSBob29kLCB3ZSBjYW4gZGlzY3VzcyB0aGUgZmVhdHVyZXMgc3VwcG9ydGVkIGJ5ICdr
ZXhlYycgcmF0aGVyIHRoYW4gdGhlIGRpc3RyaWJ1dGlvbiBzcGVjaWZpYyBzY3JpcHRzIChkaXNj
dXNzaW9uIHJlZ2FyZGluZyB3aGljaCBhcmUgcHJvYmFibHkgbW9yZSBzdWl0ZWQgdG8gdGhlIEZl
ZG9yYSBrZXhlYyBsaXN0OiBrZXhlY0BsaXN0cy5mZWRvcmFwcm9qZWN0Lm9yZykKPiAKPiBBZ3Jl
ZWQsIHRoaXMgUkZDIGlzIGZvciBhIGNoYW5nZSB0byBrZXhlYywgbm90aW5nIHRoYXQgd3JhcHBl
ciBzY3JpcHRzIHN1Y2ggYXMga2R1bXBjdGwgYXJlIGluc3VmZmljaWVudCB0byBwcm92aWRlIHRo
ZSBmdW5jdGlvbmFsaXR5IHJlcXVlc3RlZC4KPiAKPj4+IFRoZXJlIG1pZ2h0IGFsc28gYmUgYW4g
b3Bwb3J0dW5pdHkgdG8gY29uc29saWRhdGUgaGFuZGxpbmcgb2YgdGhlCj4+PiBrZXJuZWwgY29t
bWFuZCBsaW5lLCBhcyBtb3N0IGFyY2ggdGFyZ2V0cyBoYXZlIHRoZSAtLWNvbW1hbmQtbGluZSwK
Pj4+IC0tYXBwZW5kLCBhbmQgLS1yZXVzZS1jbWRsaW5lIG9wdGlvbnMsIHRob3VnaCBlYWNoIGFy
Y2ggaW5kZXBlbmRlbnRseQo+Pj4gY29kZXMgdGhlIHN1cHBvcnQgZm9yIHRoZXNlIG9wdGlvbnMu
Cj4+IFRoaXMgc2VlbXMgbGlrZSBhIGdvb2QgaWRlYSwgbW9yZSBvbiB0aGUgc2FtZSBiZWxvdyAu
Li4KPj4+IE5vdGU6IFNpbXBseSBwcmludGluZyB0aGUgY21kbGluZSBpbiBzY3JpcHRzIHN1Y2gg
YXMga2R1bXBjdGwgbWF5IG5vdAo+Pj4gcmVzdWx0IGluIHRoZSBzYW1lIG9yZGVyaW5nLCBhbmQg
d2lsbCBvbWl0IGFueSBhZGRpdGlvbiBtYWRlIGludGVybmFsbHkKPj4+IGJ5IGtleGVjLCBzdWNo
IGFzIHRoZSBlbGZjb3JlaGRyLgo+Pj4gCj4+PiBJIHByb3Bvc2UgdGhlIGFkZGl0aW9uIG9mIGFu
IG9wdGlvbiB0byBrZXhlYywgLS1wcmludC1rY2wgKHRvIG1pcnJvcgo+Pj4gLS1wcmludC1ja3Ip
LCB0aGF0IHdvdWxkIGNvbnRyb2wgc3VjaCBwcmludGluZywgYXMgd2VsbCBhcyB0aGUgbmVlZGVk
Cj4+PiBwZXIgYXJjaCBjb25kaXRpb25hbCBwcmludCBzdGF0ZW1lbnRzIHNpbWlsYXIgdG8gdGhl
IGFib3ZlIHRvIHByaW50IHRoZQo+Pj4gZmluYWwgY29uc3RydWN0ZWQga2VybmVsIGNvbW1hbmQg
bGluZS4KPj4gLi4uIEkgYW0gbm90IHN1cmUgSSB1bmRlcnN0YW5kIHRoZSBhYm92ZSBwb2ludC4g
TG9va2luZyBhdCB0aGUgbGF0ZXN0IGtleGVjLXRvb2xzIG1hbiBwYWdlIChzZWU6IGdpdDovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vdXRpbHMva2VybmVsL2tleGVjL2tleGVjLXRvb2xzLmdpdCks
IEkgY291bGRuJ3QgZmluZCAnLS1wcmludC1ja3InIG9wdGlvbjoKPj4gLS1wcmludC1ja3Itc2l6
ZTogUHJpbnQgY3Jhc2gga2VybmVsIHJlZ2lvbiBzaXplLCBpZiBhdmFpbGFibGUuCj4+IENhbiB5
b3UgcGxlYXNlIGVsYWJvcmF0ZSBvbiAnLS1wcmludC1ja3InIGFuZCAnLS1wcmludC1rY2wnIG9w
dGlvbnMgbW9yZS4KPiAKPiBZb3UgcHJvcG9zZWQgdXNpbmcgZGJncHJpbnRmKCkgaW4gY29uanVu
Y3Rpb24gd2l0aCB0aGUgLWQgb3B0aW9uOyBhbmQgdGhhdCBtYWtlcyBncmVhdCBzZW5zZTsgSSBo
YWQgbm90IGluIG15IGVhZ2VybmVzcyB0byBwcm9kdWNlIHRoaXMgUkZDLgo+IAo+IEluc3RlYWQs
IEkgcHJvcG9zZWQgYW5vdGhlciBvcHRpb24gLS1wcmludC1rY2wgKGZvciBwcmludCBrZXJuZWwg
Y29tbWFuZCBsaW5lKSB0byBjb25kaXRpb25hbGx5IHByaW50IHRoZSBpbmZvcm1hdGlvbi4gSSB3
YXMgdXNpbmcgLS1wcmludC1ja3IgYXMgYW4gZXhhbXBsZSBvZiBzaW1pbGFyIG9wdGlvbiB1c2Vk
IHRvIHByaW50IGluZm9ybWF0aW9uIChpbiB0aGlzIGNhc2UsIHRoZSBjcmFzaCBrZXJuZWwgcmVn
aW9uKS4gT3RoZXIgdGhhbiBhIHNpbWlsYXIgbmFtaW5nIGNvbnZlbnRpb24sIHRoZXJlIGlzIG5v
IGNvcnJlbGF0aW9uIGJldHdlZW4gLS1wcmludC1ja3IgYW5kIC0tcHJpbnQta2NsLCBhbmQgaW5k
ZWVkIGV2ZW4gLS1wcmludC1rY2wgbWlnaHQgYmUgdW4tbmVjZXNzYXJ5IGdpdmVuIGRiZ3ByaW50
ZigpLgo+IAoKCiAgICBJIGRvbuKAmXQgc2VlIGEgbmVlZCBmb3IgLWQgOyAgICBvciBleHRyYSBv
cHRpb25zIDsgIEnigJlkIGxpa2UgdG8gc2VlIG1ha2VkdW1wZmlsZSBiZSBhIGxpdHRsZSBtb3Jl
IHZlcmJvc2Ugd2hlbiBpdCBydW5zICB0byBzaG93IHRoZSBjb25maWd1cmF0aW9uIG9wdGlvbnMg
YmVjYXVzZSBpdCBpcyBvZnRlbiByYW4gaW4gdGltZXMgb2YgZ3JlYXQgbmVlZCB0byBpc29sYXRl
IGEgc3lzdGVtICBwcm9ibGVtLCBhbmQgdGhlIG1vcmUgZGV0YWlscyBhdmFpbGFibGUgLSAgdGhl
IGJldHRlci4gCgoKCgo+IAo+PiBUaGFua3MsCj4+IEJodXBlc2gKPj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4ga2V4ZWMgbWFpbGluZyBsaXN0Cj4+
IGtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gaHR0cHM6Ly91cmxkZWZlbnNlLnByb29mcG9p
bnQuY29tL3YyL3VybD91PWh0dHAtM0FfX2xpc3RzLmluZnJhZGVhZC5vcmdfbWFpbG1hbl9saXN0
aW5mb19rZXhlYyZkPUR3SUdhUSZjPVJvUDFZdW1DWENnYVdIdmxaWVI4UFpoOEJ2N3FJck1VQjY1
ZWFwSV9KbkUmcj10MmZQZzlEODdGN0Q4am0wXzNDRzl5b2lJS2RSZzRxY190aEJ3NGJ6TWhjJm09
N0pCT3pEVjVhanJyRFRjMUFBVGs1aG9ZWlhRX2lOUWU2LS1lRVRLWFUtMCZzPUw4TVlBTGVyTGNo
Q3FIOTlUQTFkczNGdzdiNGJzMUZFcEhZU0dCY3FpTUEmZT0gCj4gCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBrZXhlYyBtYWlsaW5nIGxpc3QKPiBr
ZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cHM6Ly91cmxkZWZlbnNlLnByb29mcG9pbnQu
Y29tL3YyL3VybD91PWh0dHAtM0FfX2xpc3RzLmluZnJhZGVhZC5vcmdfbWFpbG1hbl9saXN0aW5m
b19rZXhlYyZkPUR3SUdhUSZjPVJvUDFZdW1DWENnYVdIdmxaWVI4UFpoOEJ2N3FJck1VQjY1ZWFw
SV9KbkUmcj10MmZQZzlEODdGN0Q4am0wXzNDRzl5b2lJS2RSZzRxY190aEJ3NGJ6TWhjJm09N0pC
T3pEVjVhanJyRFRjMUFBVGs1aG9ZWlhRX2lOUWU2LS1lRVRLWFUtMCZzPUw4TVlBTGVyTGNoQ3FI
OTlUQTFkczNGdzdiNGJzMUZFcEhZU0dCY3FpTUEmZT0gCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9rZXhlYwo=
