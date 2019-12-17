Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2208A122E55
	for <lists+kexec@lfdr.de>; Tue, 17 Dec 2019 15:17:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OZPTajhZlxeOIrS31BncsSQhiWudd4JbyyOC0dlqN5k=; b=rV6DZ/8XGY2IWp63EJ7FBvZpi
	IunP+uWkPRSMRMlXVW+yFe4UJeVHZUJ4KH7x3UlY9SBmDYa8IxnxZwApW3X6drVZys/3yjoGzjo5+
	gUhRVWVE+c/w1g3aU5/w6QQg4NRDBZ8du1H3u6Iw6I0jqtbAl7krGBvVGwsDJtn7BmCZ7W5YJjKXy
	34PEg2NaOe/KZHgT4WWNMgrQ5jnN8h5EPAZgJAkUzLmNCB+B+FfIEmHXO+/GQJMjtP0BDmjs9aTfe
	39v7nI1VrO8VQDYkHuZq2zxVON5SPqwsgCpk3SlOwg4ggiObaeXUlTmM2nb1RgpAC/PTohjw9mRp2
	5yU4PG8PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDev-0001wN-7Q; Tue, 17 Dec 2019 14:17:09 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDer-0001vs-Lv
 for kexec@lists.infradead.org; Tue, 17 Dec 2019 14:17:07 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBHEE8qj051498
 for <kexec@lists.infradead.org>; Tue, 17 Dec 2019 14:17:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=ih1e4HPNwc6Jo+z2qtUfBrIkT55xf1uKMRJ2B5cWVN0=;
 b=RSfGIRIi7rv6gGAt4Fw1Ois0M5oJFBCtMCKDF5x3Zz7JLNr1BHJ+CMyIucWjSG4bcVZ7
 iDOTRutyd8HtAcXZdrsQebdJb0uIMqkyuL4g+4BAV8JNkFbndTNIcv59aQIDo/XDeUYP
 pGS34g544FBl0wVZUDMV0Iwk98UV+C3ywN2sBJwYACfXSe6WmAEsdhLYZWzoIQ3wuzca
 88MmMD1tC3qrnIM53DT3j1pTS+cHPg2+g3C+nUW31qbszlgUKZnJVz44R8p2Ie0a8M+f
 9Kql5x0yRZKMHgNd09B6IBXh5jMDvbfv4jIHL+olbl9ANwASnp7WtNIYEnap/8TewlJj ig== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2wvqpq6y3a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Tue, 17 Dec 2019 14:17:04 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBHEE3It159434
 for <kexec@lists.infradead.org>; Tue, 17 Dec 2019 14:17:04 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2wxm4vqye1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Tue, 17 Dec 2019 14:17:03 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xBHEH26p009759
 for <kexec@lists.infradead.org>; Tue, 17 Dec 2019 14:17:02 GMT
Received: from [10.149.224.210] (/10.149.224.210)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 17 Dec 2019 06:17:02 -0800
Subject: Re: [RFC] printing the final constructed kernel command line
To: John Donnelly <john.p.donnelly@oracle.com>
References: <056beee8-6caf-1aec-a111-1d0c37bcb137@oracle.com>
 <0E3D2BDA-ED70-40C6-8D11-1735D44A40CF@oracle.com>
From: Eric DeVolder <eric.devolder@oracle.com>
Message-ID: <d615c636-c197-1aed-d2e9-bbf84b43609d@oracle.com>
Date: Tue, 17 Dec 2019 08:17:00 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0E3D2BDA-ED70-40C6-8D11-1735D44A40CF@oracle.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9473
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912170122
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9473
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912170122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_061705_809080_9B1E0011 
X-CRM114-Status: GOOD (  24.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgSm9obiwKU2VlIGJlbG93LgplcmljCgpPbiAxMi8xNi8xOSAyOjU0IFBNLCBKb2huIERvbm5l
bGx5IHdyb3RlOgo+IAo+IAo+PiBPbiBEZWMgMTYsIDIwMTksIGF0IDI6MzIgUE0sIEVyaWMgRGVW
b2xkZXIgPGVyaWMuZGV2b2xkZXJAb3JhY2xlLmNvbT4gd3JvdGU6Cj4+Cj4+IFRoZSAtLWNvbW1h
bmQtbGluZSwgLS1hcHBlbmQsIGFuZCAtLXJldXNlLWNtZGxpbmUgb3B0aW9ucyB0byBrZXhlYyBj
YW4KPj4gYmUgdXNlZCBpbiBjb21iaW5hdGlvbiB0byBjcmFmdCBhIGtlcm5lbCBjb21tYW5kIGxp
bmUgZm9yIGEga2VybmVsCj4+IGxvYWRlZCB2aWEga2V4ZWMuIEluIGFkZGl0aW9uLCB0aGUga2V4
ZWMgdG9vbCBtYXkgYWxzbyBtYW5pcHVsYXRlCj4+IGZ1cnRoZXIgdGhlIGNvbW1hbmQgbGluZSwg
ZWcuICBlbGZjb3JlaGRyIGFkZGl0aW9uLgo+Pgo+PiBUbyBhaWQgaW4gZGVidWdnaW5nIGtkdW1w
L2tleGVjIHJlbGF0ZWQgaXNzdWVzLCBpdCB3b3VsZCBiZSBoZWxwZnVsCj4+IGZvciBrZXhlYyB0
byBwcmludCB0aGUgZmluYWwgY29uc3RydWN0ZWQga2VybmVsIGNvbW1hbmQgbGluZSBhcmd1bWVu
dC4KPj4KPj4gRm9yIGV4YW1wbGUsIHRoZSBmb2xsb3dpbmcgc2ltcGxlIGNoYW5nZSAoZm9yIGkz
ODYveDg2XzY0KToKPj4KPj4gZGlmZiAtLWdpdCBhL2tleGVjL2FyY2gvaTM4Ni94ODYtbGludXgt
c2V0dXAuYyBiL2tleGVjL2FyY2gvaTM4Ni94ODYtbGludXgtc2V0dXAuYwo+PiBpbmRleCAwNTdl
ZTE0Li42ZGM0YWRjIDEwMDY0NAo+PiAtLS0gYS9rZXhlYy9hcmNoL2kzODYveDg2LWxpbnV4LXNl
dHVwLmMKPj4gKysrIGIva2V4ZWMvYXJjaC9pMzg2L3g4Ni1saW51eC1zZXR1cC5jCj4+IEBAIC01
Nyw2ICs1Nyw4IEBAIHZvaWQgc2V0dXBfbGludXhfYm9vdGxvYWRlcl9wYXJhbWV0ZXJzX2hpZ2go
Cj4+IAljaGFyICpjbWRsaW5lX3B0cjsKPj4gCXVuc2lnbmVkIGxvbmcgaW5pdHJkX2Jhc2UsIGlu
aXRyZF9hZGRyX21heDsKPj4KPj4gKyAgICBwcmludGYoIkZpbmFsIGtlcm5lbCBjbWRsaW5lOiAn
JXMnXG4iLCBjbWRsaW5lKTsKPj4gKwo+PiAJLyogU2F5IEknbSBhIGJvb3QgbG9hZGVyICovCj4+
IAlyZWFsX21vZGUtPmxvYWRlcl90eXBlID0gTE9BREVSX1RZUEVfS0VYRUMgPDwgNDsKPj4KPj4g
cmVzdWx0cyBpbiB0aGUgZm9sbG93aW5nIG9uIGEgc3lzdGVtZC1iYXNlZCBzeXN0ZW0gKGZvcm1h
dHRlZCB0byBmaXQKPj4gaW4gNzAgY2hhciBsaW5lcyk6Cj4+Cj4+ICUgc3lzdGVtY3RsIHN0YXR1
cyAtbCBrZHVtcC5zZXJ2aWNlCj4+IOKXjyBrZHVtcC5zZXJ2aWNlIC0gQ3Jhc2ggcmVjb3Zlcnkg
a2VybmVsIGFybWluZwo+PiAgICBMb2FkZWQ6IGxvYWRlZCAoL3Vzci9saWIvc3lzdGVtZC9zeXN0
ZW0va2R1bXAuc2VydmljZTsgZW5hYmxlZDsKPj4gICAgIHZlbmRvciBwcmVzZXQ6IGVuYWJsZWQp
Cj4+ICAgIEFjdGl2ZTogYWN0aXZlIChleGl0ZWQpIHNpbmNlIE1vbiAyMDE5LTEyLTE2IDE0OjU5
OjIxIEVTVDsKPj4gICAgIDJtaW4gNTNzIGFnbwo+PiAgIFByb2Nlc3M6IDE0MDU4IEV4ZWNTdG9w
PS91c3IvYmluL2tkdW1wY3RsIHN0b3AgKGNvZGU9ZXhpdGVkLAo+PiAgICBzdGF0dXM9MC9TVUND
RVNTKQo+PiAgIFByb2Nlc3M6IDE0MDczIEV4ZWNTdGFydD0vdXNyL2Jpbi9rZHVtcGN0bCBzdGFy
dCAoY29kZT1leGl0ZWQsCj4+ICAgIHN0YXR1cz0wL1NVQ0NFU1MpCj4+IE1haW4gUElEOiAxNDA3
MyAoY29kZT1leGl0ZWQsIHN0YXR1cz0wL1NVQ0NFU1MpCj4+Cj4+IERlYyAxNiAxNDo1OToxOCB2
bTM2NCBrZHVtcGN0bFsxNDA1OF06IFN0b3BwaW5nIGtkdW1wOiBbT0tdCj4+IERlYyAxNiAxNDo1
OToxOCB2bTM2NCBzeXN0ZW1kWzFdOiBTdG9wcGVkIENyYXNoIHJlY292ZXJ5IGtlcm5lbCBhcm1p
bmcuCj4+IERlYyAxNiAxNDo1OToxOCB2bTM2NCBzeXN0ZW1kWzFdOiBTdGFydGluZyBDcmFzaCBy
ZWNvdmVyeSBrZXJuZWwgYXJtaW5nLi4uCj4+IERlYyAxNiAxNDo1OToyMSB2bTM2NCBrZHVtcGN0
bFsxNDA3M106IEZpbmFsIGtlcm5lbCBjbWRsaW5lOiAnQk9PVF9JTUFHRT0KPj4gL3ZtbGludXot
NC4xNC4zNS0xOTAyLjcuMy4xLmVsN3Vlay54ODZfNjQgcm8gcmhnYiBxdWlldCBMQU5HPWVuX1VT
LlVURi04Cj4+IGlycXBvbGwgbnJfY3B1cz0xIHJlc2V0X2RldmljZXMgY2dyb3VwX2Rpc2FibGU9
bWVtb3J5IG1jZT1vZmYgbnVtYT1vZmYKPj4gdWRldi5jaGlsZHJlbi1tYXg9MiBwYW5pYz0xMCBy
b290ZmxhZ3M9bm9mYWlsIGFjcGlfbm9fbWVtaG90cGx1Zwo+PiB0cmFuc3BhcmVudF9odWdlcGFn
ZT1uZXZlciBub2thc2xyIG5vdm1jb3JlZGQgZGlzYWJsZV9jcHVfYXBpY2lkPTAKPj4gZWxmY29y
ZWhkcj05MDE0OTJLJwo+PiBEZWMgMTYgMTQ6NTk6MjEgdm0zNjQgc3lzdGVtZFsxXTogU3RhcnRl
ZCBDcmFzaCByZWNvdmVyeSBrZXJuZWwgYXJtaW5nLgo+PiBEZWMgMTYgMTQ6NTk6MjEgdm0zNjQg
a2R1bXBjdGxbMTQwNzNdOiBrZXhlYzogbG9hZGVkIGtkdW1wIGtlcm5lbAo+PiBEZWMgMTYgMTQ6
NTk6MjEgdm0zNjQga2R1bXBjdGxbMTQwNzNdOiBTdGFydGluZyBrZHVtcDogW09LXQo+Pgo+PiBh
bmQgdGhlIG91dHB1dCBpcyBhbHNvIGF2YWlsYWJsZSBpbiAvdmFyL2xvZy9tZXNzYWdlcy4KPj4K
Pj4gVGhlcmUgbWlnaHQgYWxzbyBiZSBhbiBvcHBvcnR1bml0eSB0byBjb25zb2xpZGF0ZSBoYW5k
bGluZyBvZiB0aGUKPj4ga2VybmVsIGNvbW1hbmQgbGluZSwgYXMgbW9zdCBhcmNoIHRhcmdldHMg
aGF2ZSB0aGUgLS1jb21tYW5kLWxpbmUsCj4+IC0tYXBwZW5kLCBhbmQgLS1yZXVzZS1jbWRsaW5l
IG9wdGlvbnMsIHRob3VnaCBlYWNoIGFyY2ggaW5kZXBlbmRlbnRseQo+PiBjb2RlcyB0aGUgc3Vw
cG9ydCBmb3IgdGhlc2Ugb3B0aW9ucy4KPj4KPj4gTm90ZTogU2ltcGx5IHByaW50aW5nIHRoZSBj
bWRsaW5lIGluIHNjcmlwdHMgc3VjaCBhcyBrZHVtcGN0bCBtYXkgbm90Cj4+IHJlc3VsdCBpbiB0
aGUgc2FtZSBvcmRlcmluZywgYW5kIHdpbGwgb21pdCBhbnkgYWRkaXRpb24gbWFkZSBpbnRlcm5h
bGx5Cj4+IGJ5IGtleGVjLCBzdWNoIGFzIHRoZSBlbGZjb3JlaGRyLgo+Pgo+PiBJIHByb3Bvc2Ug
dGhlIGFkZGl0aW9uIG9mIGFuIG9wdGlvbiB0byBrZXhlYywgLS1wcmludC1rY2wgKHRvIG1pcnJv
cgo+PiAtLXByaW50LWNrciksIHRoYXQgd291bGQgY29udHJvbCBzdWNoIHByaW50aW5nLCBhcyB3
ZWxsIGFzIHRoZSBuZWVkZWQKPj4gcGVyIGFyY2ggY29uZGl0aW9uYWwgcHJpbnQgc3RhdGVtZW50
cyBzaW1pbGFyIHRvIHRoZSBhYm92ZSB0byBwcmludCB0aGUKPj4gZmluYWwgY29uc3RydWN0ZWQg
a2VybmVsIGNvbW1hbmQgbGluZS4KPiAKPiBJcyB0aGlzIGNvbW1vbiBjb2RlIGF2YWlsYWJsZSBp
biB0aGUgQXJtIGVudmlyb25tZW50ICB0b28gPwoKVGhlIG9wdGlvbiB3b3VsZCBiZSBpbiBjb21t
b24gY29kZS4KPiAKPiBJZiBub3QsIGNvdWxkIHlvdSBtYWtlIGl0IHNvID8KCkknbSBub3Qgc3Vy
ZSwgeWV0LCBhcyB0byB3aGF0IGRlZ3JlZSBvZiBjb25zb2xpZGF0aW9uIG9mIHRoZSAtLWNvbW1h
bmQtbGluZSAtLWFwcGVuZCBhbmQgCi0tcmVzdXNlLWNtZGxpbmUgb3B0aW9ucyBpbnRvIGNvbW1v
biBjb2RlIGlzIGRlc2lyYWJsZS4KCj4gCj4gCj4gCj4gCj4+Cj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IGtleGVjIG1haWxpbmcgbGlzdAo+PiBr
ZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCj4+IGh0dHBzOi8vdXJsZGVmZW5zZS5wcm9vZnBvaW50
LmNvbS92Mi91cmw/dT1odHRwLTNBX19saXN0cy5pbmZyYWRlYWQub3JnX21haWxtYW5fbGlzdGlu
Zm9fa2V4ZWMmZD1Ed0lHYVEmYz1Sb1AxWXVtQ1hDZ2FXSHZsWllSOFBaaDhCdjdxSXJNVUI2NWVh
cElfSm5FJnI9dDJmUGc5RDg3RjdEOGptMF8zQ0c5eW9pSUtkUmc0cWNfdGhCdzRiek1oYyZtPVpo
aGFaMjdPalpwbnBtVk5QXzJDZ0RocG5JTlhua3Z0OVBFVDB4bnRJTjgmcz1QMUJSZFZ0VXprQzVX
dEFHUHlUQlFyZVNJLTRuc1RFdU1KNy1ELTVXenZVJmU9Cj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2tleGVjCg==
