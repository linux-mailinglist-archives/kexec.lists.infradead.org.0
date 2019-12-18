Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9329712512F
	for <lists+kexec@lfdr.de>; Wed, 18 Dec 2019 20:00:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J+EXW3B+VGepjtiv6D/GDpb2GiPVu5FEYcqAVOVBtW0=; b=iUAx5YI26pQmf+loxyr0eqEpa
	LxNEybdCE9zpeal6UjvWJWhRGb+NhNlHpOSFcdwtMNw4CJ9ONlPmYNPpF7PBEyA3ollK1vSDmeGUk
	quNn0EmsDu3JY6rHRr9ZDBebyR2o1ZSLXUHY+AwOSsKXtdO3Jsk8AEx5444P4+BrKNiDeIkRR7RBq
	EV0oKdA3F2OnuPtfYD9gXyvhTQa1i/E3Fihn5ao4IvUI7LmLzFgwlH2Pcz77YQWylwoRqyGrebg89
	BDxNGnfbr4aGoabRGQtrhUABd299r+XvzjXquZ+nL0zbAaJu4A+qVtHZEFPz8770WYKIa0mj4uDwo
	WdC28v3tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iheYS-0004Pa-Hn; Wed, 18 Dec 2019 19:00:16 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iheYO-0003qN-EW
 for kexec@lists.infradead.org; Wed, 18 Dec 2019 19:00:14 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBIIiO8I105523;
 Wed, 18 Dec 2019 19:00:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=4tBkbr4sqkkJV05Zk5V+YDajjr20vR6P3PsyDzh0kNQ=;
 b=Y/c9dA64P4kxM/0CA95K+44ajcWq3aL6jPI68yCahMlDPeBIOfWRNOnyu5OC3xazt6ZX
 jN2+ksoBBvO764HGRnPd/9TTwj65gKzXcfQgoQZ8y92u7WjV9G7lOSwwjjSb3AgcGNBC
 zZ55FrsgmYhnx1hDLCBdYLS8GMXBhlal2Pgufb9wD+CQ5D9GiwxBtsV4xNrxDsidkbny
 EL4CmeUe50NB3H9Im3i2i04RsEnA1JK7+Yx82d2PRLXXsXRk+FaRqj/ty7b1s7FFvzKj
 vf6qyr+YgNWHCJjoJwdbXWbxj3NhFgr/2qEeE/Ie/K72qs2sIXRcOab5ktMX8wVpNxk8 Qw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2wvq5uqqfr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Dec 2019 19:00:07 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBIIiOJT016970;
 Wed, 18 Dec 2019 19:00:06 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2wyp4xvnj7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Dec 2019 19:00:06 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xBIJ05sE007243;
 Wed, 18 Dec 2019 19:00:05 GMT
Received: from [10.149.224.210] (/10.149.224.210)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 18 Dec 2019 11:00:04 -0800
Subject: Re: [RFC] printing the final constructed kernel command line
To: Bhupesh Sharma <bhsharma@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
References: <056beee8-6caf-1aec-a111-1d0c37bcb137@oracle.com>
 <4bb55b9c-1585-4d5a-2bd7-ec40b8fd0eed@redhat.com>
From: Eric DeVolder <eric.devolder@oracle.com>
Message-ID: <319db0e3-0e1b-bd5b-e751-8750bae1456d@oracle.com>
Date: Wed, 18 Dec 2019 13:00:03 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <4bb55b9c-1585-4d5a-2bd7-ec40b8fd0eed@redhat.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9475
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912180147
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9475
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912180147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_110012_579747_67877700 
X-CRM114-Status: GOOD (  30.94  )
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
Cc: "bhupesh.linux >> Bhupesh SHARMA" <bhupesh.linux@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

VGhhbmtzIEJodXBlc2ggZm9yIHRoZSBmZWVkYmFjaywgcmVzcG9uc2VzIGJlbG93IQplcmljCgpP
biAxMi8xNy8xOSAxOjU5IFBNLCBCaHVwZXNoIFNoYXJtYSB3cm90ZToKPiBIaSBFcmljLAo+IAo+
IE9uIDEyLzE3LzIwMTkgMDI6MDIgQU0sIEVyaWMgRGVWb2xkZXIgd3JvdGU6Cj4+IFRoZSAtLWNv
bW1hbmQtbGluZSwgLS1hcHBlbmQsIGFuZCAtLXJldXNlLWNtZGxpbmUgb3B0aW9ucyB0byBrZXhl
YyBjYW4KPj4gYmUgdXNlZCBpbiBjb21iaW5hdGlvbiB0byBjcmFmdCBhIGtlcm5lbCBjb21tYW5k
IGxpbmUgZm9yIGEga2VybmVsCj4+IGxvYWRlZCB2aWEga2V4ZWMuIEluIGFkZGl0aW9uLCB0aGUg
a2V4ZWMgdG9vbCBtYXkgYWxzbyBtYW5pcHVsYXRlCj4+IGZ1cnRoZXIgdGhlIGNvbW1hbmQgbGlu
ZSwgZWcuwqAgZWxmY29yZWhkciBhZGRpdGlvbi4KPiAKPiBUaGFua3MgZm9yIHByb3Bvc2luZyB0
aGlzIGNoYW5nZS4gSSBoYXZlIHNvbWUgY29tbWVudHMvcXVlcmllcyAoc2VlIGJlbG93KS4KPiAK
Pj4gVG8gYWlkIGluIGRlYnVnZ2luZyBrZHVtcC9rZXhlYyByZWxhdGVkIGlzc3VlcywgaXQgd291
bGQgYmUgaGVscGZ1bAo+PiBmb3Iga2V4ZWMgdG8gcHJpbnQgdGhlIGZpbmFsIGNvbnN0cnVjdGVk
IGtlcm5lbCBjb21tYW5kIGxpbmUgYXJndW1lbnQuCj4+Cj4+IEZvciBleGFtcGxlLCB0aGUgZm9s
bG93aW5nIHNpbXBsZSBjaGFuZ2UgKGZvciBpMzg2L3g4Nl82NCk6Cj4+Cj4+IGRpZmYgLS1naXQg
YS9rZXhlYy9hcmNoL2kzODYveDg2LWxpbnV4LXNldHVwLmMgYi9rZXhlYy9hcmNoL2kzODYveDg2
LWxpbnV4LXNldHVwLmMKPj4gaW5kZXggMDU3ZWUxNC4uNmRjNGFkYyAxMDA2NDQKPj4gLS0tIGEv
a2V4ZWMvYXJjaC9pMzg2L3g4Ni1saW51eC1zZXR1cC5jCj4+ICsrKyBiL2tleGVjL2FyY2gvaTM4
Ni94ODYtbGludXgtc2V0dXAuYwo+PiBAQCAtNTcsNiArNTcsOCBAQCB2b2lkIHNldHVwX2xpbnV4
X2Jvb3Rsb2FkZXJfcGFyYW1ldGVyc19oaWdoKAo+PiDCoMKgwqDCoMKgIGNoYXIgKmNtZGxpbmVf
cHRyOwo+PiDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgaW5pdHJkX2Jhc2UsIGluaXRyZF9hZGRy
X21heDsKPj4KPj4gK8KgwqDCoCBwcmludGYoIkZpbmFsIGtlcm5lbCBjbWRsaW5lOiAnJXMnXG4i
LCBjbWRsaW5lKTsKPj4gKwo+IAo+IElmIHdlIHdhbnQgdG8gYWRkIHRoaXMgZm9yIGRlYnVnZ2lu
ZyBwdXJwb3NlcywgaXRzIGJldHRlciB0byBoYXZlIGRiZ3ByaW50ZigpIGluc3RlYWQgb2YgcHJp
bnRmKCkgCj4gaGVyZS4gVGhpcyB3aWxsIG1ha2Ugc3VyZSB0aGF0IHRoZSBkZWJ1ZyBtZXNzYWdl
IGlzIHByaW50ZWQgb25seSB3aGVuICctZCcgZmxhZyBpcyBzcGVjaWZpZWQgd2hpbGUgCj4gY2Fs
bGluZyBrZXhlYyB1dGlsaXR5IGZyb20gY29tbWFuZC1saW5lLgoKWWVzISBJIHVzZWQgcHJpbnRm
KCkgbWVyZWx5IHRvIHByb3ZpZGUgYW4gZXhhbXBsZSBvZiB3aGF0IGlzIHBvc3NpYmxlLgoKPiAK
Pj4gwqDCoMKgwqDCoCAvKiBTYXkgSSdtIGEgYm9vdCBsb2FkZXIgKi8KPj4gwqDCoMKgwqDCoCBy
ZWFsX21vZGUtPmxvYWRlcl90eXBlID0gTE9BREVSX1RZUEVfS0VYRUMgPDwgNDsKPj4KPj4gcmVz
dWx0cyBpbiB0aGUgZm9sbG93aW5nIG9uIGEgc3lzdGVtZC1iYXNlZCBzeXN0ZW0gKGZvcm1hdHRl
ZCB0byBmaXQKPj4gaW4gNzAgY2hhciBsaW5lcyk6Cj4+Cj4+ICUgc3lzdGVtY3RsIHN0YXR1cyAt
bCBrZHVtcC5zZXJ2aWNlCj4+IOKXjyBrZHVtcC5zZXJ2aWNlIC0gQ3Jhc2ggcmVjb3Zlcnkga2Vy
bmVsIGFybWluZwo+PiDCoMKgwqAgTG9hZGVkOiBsb2FkZWQgKC91c3IvbGliL3N5c3RlbWQvc3lz
dGVtL2tkdW1wLnNlcnZpY2U7IGVuYWJsZWQ7Cj4+IMKgwqDCoMKgIHZlbmRvciBwcmVzZXQ6IGVu
YWJsZWQpCj4+IMKgwqDCoCBBY3RpdmU6IGFjdGl2ZSAoZXhpdGVkKSBzaW5jZSBNb24gMjAxOS0x
Mi0xNiAxNDo1OToyMSBFU1Q7Cj4+IMKgwqDCoMKgIDJtaW4gNTNzIGFnbwo+PiDCoMKgIFByb2Nl
c3M6IDE0MDU4IEV4ZWNTdG9wPS91c3IvYmluL2tkdW1wY3RsIHN0b3AgKGNvZGU9ZXhpdGVkLAo+
PiDCoMKgwqAgc3RhdHVzPTAvU1VDQ0VTUykKPj4gwqDCoCBQcm9jZXNzOiAxNDA3MyBFeGVjU3Rh
cnQ9L3Vzci9iaW4va2R1bXBjdGwgc3RhcnQgKGNvZGU9ZXhpdGVkLAo+PiDCoMKgwqAgc3RhdHVz
PTAvU1VDQ0VTUykKPj4gwqAgTWFpbiBQSUQ6IDE0MDczIChjb2RlPWV4aXRlZCwgc3RhdHVzPTAv
U1VDQ0VTUykKPj4KPj4gRGVjIDE2IDE0OjU5OjE4IHZtMzY0IGtkdW1wY3RsWzE0MDU4XTogU3Rv
cHBpbmcga2R1bXA6IFtPS10KPj4gRGVjIDE2IDE0OjU5OjE4IHZtMzY0IHN5c3RlbWRbMV06IFN0
b3BwZWQgQ3Jhc2ggcmVjb3Zlcnkga2VybmVsIGFybWluZy4KPj4gRGVjIDE2IDE0OjU5OjE4IHZt
MzY0IHN5c3RlbWRbMV06IFN0YXJ0aW5nIENyYXNoIHJlY292ZXJ5IGtlcm5lbCBhcm1pbmcuLi4K
Pj4gRGVjIDE2IDE0OjU5OjIxIHZtMzY0IGtkdW1wY3RsWzE0MDczXTogRmluYWwga2VybmVsIGNt
ZGxpbmU6ICdCT09UX0lNQUdFPQo+PiDCoCAvdm1saW51ei00LjE0LjM1LTE5MDIuNy4zLjEuZWw3
dWVrLng4Nl82NCBybyByaGdiIHF1aWV0IExBTkc9ZW5fVVMuVVRGLTgKPj4gwqAgaXJxcG9sbCBu
cl9jcHVzPTEgcmVzZXRfZGV2aWNlcyBjZ3JvdXBfZGlzYWJsZT1tZW1vcnkgbWNlPW9mZiBudW1h
PW9mZgo+PiDCoCB1ZGV2LmNoaWxkcmVuLW1heD0yIHBhbmljPTEwIHJvb3RmbGFncz1ub2ZhaWwg
YWNwaV9ub19tZW1ob3RwbHVnCj4+IMKgIHRyYW5zcGFyZW50X2h1Z2VwYWdlPW5ldmVyIG5va2Fz
bHIgbm92bWNvcmVkZCBkaXNhYmxlX2NwdV9hcGljaWQ9MAo+PiDCoCBlbGZjb3JlaGRyPTkwMTQ5
MksnCj4+IERlYyAxNiAxNDo1OToyMSB2bTM2NCBzeXN0ZW1kWzFdOiBTdGFydGVkIENyYXNoIHJl
Y292ZXJ5IGtlcm5lbCBhcm1pbmcuCj4+IERlYyAxNiAxNDo1OToyMSB2bTM2NCBrZHVtcGN0bFsx
NDA3M106IGtleGVjOiBsb2FkZWQga2R1bXAga2VybmVsCj4+IERlYyAxNiAxNDo1OToyMSB2bTM2
NCBrZHVtcGN0bFsxNDA3M106IFN0YXJ0aW5nIGtkdW1wOiBbT0tdCj4+Cj4+IGFuZCB0aGUgb3V0
cHV0IGlzIGFsc28gYXZhaWxhYmxlIGluIC92YXIvbG9nL21lc3NhZ2VzLgo+IAo+IFNpbmNlIGtk
dW1wY3RsIGlzIGEgZGlzdHJpYnV0aW9uIHNwZWNpZmljIHNjcmlwdCAoVXNlZCBieSBGZWRvcmEv
UkhFTCksIHdoaWNoIGludm9rZXMgJ2tleGVjJyB1bmRlciAKPiB0aGUgaG9vZCwgd2UgY2FuIGRp
c2N1c3MgdGhlIGZlYXR1cmVzIHN1cHBvcnRlZCBieSAna2V4ZWMnIHJhdGhlciB0aGFuIHRoZSBk
aXN0cmlidXRpb24gc3BlY2lmaWMgCj4gc2NyaXB0cyAoZGlzY3Vzc2lvbiByZWdhcmRpbmcgd2hp
Y2ggYXJlIHByb2JhYmx5IG1vcmUgc3VpdGVkIHRvIHRoZSBGZWRvcmEga2V4ZWMgbGlzdDogCj4g
a2V4ZWNAbGlzdHMuZmVkb3JhcHJvamVjdC5vcmcpCgpBZ3JlZWQsIHRoaXMgUkZDIGlzIGZvciBh
IGNoYW5nZSB0byBrZXhlYywgbm90aW5nIHRoYXQgd3JhcHBlciBzY3JpcHRzIHN1Y2ggYXMga2R1
bXBjdGwgYXJlIAppbnN1ZmZpY2llbnQgdG8gcHJvdmlkZSB0aGUgZnVuY3Rpb25hbGl0eSByZXF1
ZXN0ZWQuCgo+IAo+PiBUaGVyZSBtaWdodCBhbHNvIGJlIGFuIG9wcG9ydHVuaXR5IHRvIGNvbnNv
bGlkYXRlIGhhbmRsaW5nIG9mIHRoZQo+PiBrZXJuZWwgY29tbWFuZCBsaW5lLCBhcyBtb3N0IGFy
Y2ggdGFyZ2V0cyBoYXZlIHRoZSAtLWNvbW1hbmQtbGluZSwKPj4gLS1hcHBlbmQsIGFuZCAtLXJl
dXNlLWNtZGxpbmUgb3B0aW9ucywgdGhvdWdoIGVhY2ggYXJjaCBpbmRlcGVuZGVudGx5Cj4+IGNv
ZGVzIHRoZSBzdXBwb3J0IGZvciB0aGVzZSBvcHRpb25zLgo+IAo+IFRoaXMgc2VlbXMgbGlrZSBh
IGdvb2QgaWRlYSwgbW9yZSBvbiB0aGUgc2FtZSBiZWxvdyAuLi4KPiAKPj4gTm90ZTogU2ltcGx5
IHByaW50aW5nIHRoZSBjbWRsaW5lIGluIHNjcmlwdHMgc3VjaCBhcyBrZHVtcGN0bCBtYXkgbm90
Cj4+IHJlc3VsdCBpbiB0aGUgc2FtZSBvcmRlcmluZywgYW5kIHdpbGwgb21pdCBhbnkgYWRkaXRp
b24gbWFkZSBpbnRlcm5hbGx5Cj4+IGJ5IGtleGVjLCBzdWNoIGFzIHRoZSBlbGZjb3JlaGRyLgo+
Pgo+PiBJIHByb3Bvc2UgdGhlIGFkZGl0aW9uIG9mIGFuIG9wdGlvbiB0byBrZXhlYywgLS1wcmlu
dC1rY2wgKHRvIG1pcnJvcgo+PiAtLXByaW50LWNrciksIHRoYXQgd291bGQgY29udHJvbCBzdWNo
IHByaW50aW5nLCBhcyB3ZWxsIGFzIHRoZSBuZWVkZWQKPj4gcGVyIGFyY2ggY29uZGl0aW9uYWwg
cHJpbnQgc3RhdGVtZW50cyBzaW1pbGFyIHRvIHRoZSBhYm92ZSB0byBwcmludCB0aGUKPj4gZmlu
YWwgY29uc3RydWN0ZWQga2VybmVsIGNvbW1hbmQgbGluZS4KPiAKPiAuLi4gSSBhbSBub3Qgc3Vy
ZSBJIHVuZGVyc3RhbmQgdGhlIGFib3ZlIHBvaW50LiBMb29raW5nIGF0IHRoZSBsYXRlc3Qga2V4
ZWMtdG9vbHMgbWFuIHBhZ2UgKHNlZTogCj4gZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS91
dGlscy9rZXJuZWwva2V4ZWMva2V4ZWMtdG9vbHMuZ2l0KSwgSSBjb3VsZG4ndCBmaW5kICctLXBy
aW50LWNrcicgb3B0aW9uOgo+IAo+IC0tcHJpbnQtY2tyLXNpemU6IFByaW50IGNyYXNoIGtlcm5l
bCByZWdpb24gc2l6ZSwgaWYgYXZhaWxhYmxlLgo+IAo+IENhbiB5b3UgcGxlYXNlIGVsYWJvcmF0
ZSBvbiAnLS1wcmludC1ja3InIGFuZCAnLS1wcmludC1rY2wnIG9wdGlvbnMgbW9yZS4KCllvdSBw
cm9wb3NlZCB1c2luZyBkYmdwcmludGYoKSBpbiBjb25qdW5jdGlvbiB3aXRoIHRoZSAtZCBvcHRp
b247IGFuZCB0aGF0IG1ha2VzIGdyZWF0IHNlbnNlOyBJIGhhZCAKbm90IGluIG15IGVhZ2VybmVz
cyB0byBwcm9kdWNlIHRoaXMgUkZDLgoKSW5zdGVhZCwgSSBwcm9wb3NlZCBhbm90aGVyIG9wdGlv
biAtLXByaW50LWtjbCAoZm9yIHByaW50IGtlcm5lbCBjb21tYW5kIGxpbmUpIHRvIGNvbmRpdGlv
bmFsbHkgCnByaW50IHRoZSBpbmZvcm1hdGlvbi4gSSB3YXMgdXNpbmcgLS1wcmludC1ja3IgYXMg
YW4gZXhhbXBsZSBvZiBzaW1pbGFyIG9wdGlvbiB1c2VkIHRvIHByaW50IAppbmZvcm1hdGlvbiAo
aW4gdGhpcyBjYXNlLCB0aGUgY3Jhc2gga2VybmVsIHJlZ2lvbikuIE90aGVyIHRoYW4gYSBzaW1p
bGFyIG5hbWluZyBjb252ZW50aW9uLCB0aGVyZSAKaXMgbm8gY29ycmVsYXRpb24gYmV0d2VlbiAt
LXByaW50LWNrciBhbmQgLS1wcmludC1rY2wsIGFuZCBpbmRlZWQgZXZlbiAtLXByaW50LWtjbCBt
aWdodCBiZSAKdW4tbmVjZXNzYXJ5IGdpdmVuIGRiZ3ByaW50ZigpLgoKCj4gCj4gVGhhbmtzLAo+
IEJodXBlc2gKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IGtleGVjIG1haWxpbmcgbGlzdAo+IGtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcK
PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5n
IGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
