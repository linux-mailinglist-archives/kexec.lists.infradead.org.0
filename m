Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C81FE12687E
	for <lists+kexec@lfdr.de>; Thu, 19 Dec 2019 18:57:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ufDY+Jrebk6R7YbraVInaKopn89pRmtuK5l98bIDEWE=; b=IbfX64pvU/HFpO1Uhy6nEVeyt
	sBTgdaUB6cle3rnPaHHIzwT8Obg9Ntg0bgdh2lSwElicPDLvGp1i0DA7dNSXa+PwjdCzNqwLhC84r
	Pyi3YeIaiGcmXaloKVGooz2zFmWdfpT2DMMqppPyi4uVWDOQkgFyaucxHcPVsqcBioyqkwtCqzRgi
	uJdexbfeSerz3nNXMx1L4WOLhGnr/qlZc64yHfDDTDXnl1RwlSU5wwsgD22U7+driRhp4aiufUDNS
	mv+0gYWIgzR/MfnEQyykzsxqGpAEjvTWRb1Si1pkS7EMCvq09fordJZ9epkgUxA+ffBRZgxafquPx
	O6DRR4yUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii02s-0008U8-6g; Thu, 19 Dec 2019 17:57:06 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii02l-0008Tg-DO
 for kexec@lists.infradead.org; Thu, 19 Dec 2019 17:57:01 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBJHhDOK002946;
 Thu, 19 Dec 2019 17:56:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=mSgUGJDvJNhGKJoCUODEMJzxSQDHDrh1mhbpc4zaq5A=;
 b=YuQHFmLVySPOfgsc/l0004UaNl2EczfY87iG9UPI0nE+IJ6CDV2f9OS9Wx8LA+mUBPX7
 pXwstGFDO2Mygcu7NP94sH5Bts7nYbiF4PptsvlCDt1wf05ihuRbyefTwEm5s42uOWfQ
 2LjHzSo9HxjydUKKfRcyKc+EDvvzZA/ErnA60ccQaiHYx0lbUK27to1CPqcMf44ajzMK
 BmlpUzutYmaj6SKfrKcVfcGf8f/xp4TVbinTduDBDtHtDBdg2V83gArpn+H3XFMJqQOC
 7SzI9sku6c/T/V/j4vPEkdAKTtCoEUVNJ90a054omLBzXqbspoxaf3X94o9h6JpX1amX sQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2x0ag11evn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Dec 2019 17:56:54 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBJGEMaQ035257;
 Thu, 19 Dec 2019 17:56:54 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2wyxqj25ug-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Dec 2019 17:56:53 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xBJHurur016219;
 Thu, 19 Dec 2019 17:56:53 GMT
Received: from [10.149.224.210] (/10.149.224.210)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 19 Dec 2019 09:56:53 -0800
Subject: Re: [RFC] printing the final constructed kernel command line
To: Bhupesh Sharma <bhsharma@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
References: <056beee8-6caf-1aec-a111-1d0c37bcb137@oracle.com>
 <4bb55b9c-1585-4d5a-2bd7-ec40b8fd0eed@redhat.com>
 <319db0e3-0e1b-bd5b-e751-8750bae1456d@oracle.com>
 <a70d5b14-566e-2fbd-7b2c-3054ccb0bee9@redhat.com>
From: Eric DeVolder <eric.devolder@oracle.com>
Message-ID: <27ef47f0-6e68-df67-d701-9a73cdc79728@oracle.com>
Date: Thu, 19 Dec 2019 11:56:52 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a70d5b14-566e-2fbd-7b2c-3054ccb0bee9@redhat.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9476
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912190135
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9476
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912190135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_095659_542901_BC75D025 
X-CRM114-Status: GOOD (  31.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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

Qmh1cGVzaCwKVGhhbmsgeW91LiBGb3IgdGhlIGZvcm1hbCBwYXRjaCwgd291bGQgeW91IGJlIG9r
IHdpdGggYSB0d28gcGhhc2UgYXBwcm9hY2gsIGZpcnN0IHdoZXJlIHdlIGFkZCBpbiAKdGhlIGRi
Z3ByaW50ZigpLCBhbmQgZm9sbG93ZWQgbGF0ZXIgYnkgYSBjb25zb2xpZGF0aW9uIG9mIHRoZSAt
LWNvbW1hbmQtbGluZSwgLS1hcHBlbmQsIAotLXJldXNlLWNtZGxpbmUgb3B0aW9uIGNvZGU/ClRo
YW5rcywKZXJpYwoKT24gMTIvMTkvMTkgNzozNCBBTSwgQmh1cGVzaCBTaGFybWEgd3JvdGU6Cj4g
SGkgRXJpYywKPiAKPiBPbiAxMi8xOS8yMDE5IDEyOjMwIEFNLCBFcmljIERlVm9sZGVyIHdyb3Rl
Ogo+PiBUaGFua3MgQmh1cGVzaCBmb3IgdGhlIGZlZWRiYWNrLCByZXNwb25zZXMgYmVsb3chCj4+
IGVyaWMKPj4KPj4gT24gMTIvMTcvMTkgMTo1OSBQTSwgQmh1cGVzaCBTaGFybWEgd3JvdGU6Cj4+
PiBIaSBFcmljLAo+Pj4KPj4+IE9uIDEyLzE3LzIwMTkgMDI6MDIgQU0sIEVyaWMgRGVWb2xkZXIg
d3JvdGU6Cj4+Pj4gVGhlIC0tY29tbWFuZC1saW5lLCAtLWFwcGVuZCwgYW5kIC0tcmV1c2UtY21k
bGluZSBvcHRpb25zIHRvIGtleGVjIGNhbgo+Pj4+IGJlIHVzZWQgaW4gY29tYmluYXRpb24gdG8g
Y3JhZnQgYSBrZXJuZWwgY29tbWFuZCBsaW5lIGZvciBhIGtlcm5lbAo+Pj4+IGxvYWRlZCB2aWEg
a2V4ZWMuIEluIGFkZGl0aW9uLCB0aGUga2V4ZWMgdG9vbCBtYXkgYWxzbyBtYW5pcHVsYXRlCj4+
Pj4gZnVydGhlciB0aGUgY29tbWFuZCBsaW5lLCBlZy7CoCBlbGZjb3JlaGRyIGFkZGl0aW9uLgo+
Pj4KPj4+IFRoYW5rcyBmb3IgcHJvcG9zaW5nIHRoaXMgY2hhbmdlLiBJIGhhdmUgc29tZSBjb21t
ZW50cy9xdWVyaWVzIChzZWUgYmVsb3cpLgo+Pj4KPj4+PiBUbyBhaWQgaW4gZGVidWdnaW5nIGtk
dW1wL2tleGVjIHJlbGF0ZWQgaXNzdWVzLCBpdCB3b3VsZCBiZSBoZWxwZnVsCj4+Pj4gZm9yIGtl
eGVjIHRvIHByaW50IHRoZSBmaW5hbCBjb25zdHJ1Y3RlZCBrZXJuZWwgY29tbWFuZCBsaW5lIGFy
Z3VtZW50Lgo+Pj4+Cj4+Pj4gRm9yIGV4YW1wbGUsIHRoZSBmb2xsb3dpbmcgc2ltcGxlIGNoYW5n
ZSAoZm9yIGkzODYveDg2XzY0KToKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9rZXhlYy9hcmNoL2kz
ODYveDg2LWxpbnV4LXNldHVwLmMgYi9rZXhlYy9hcmNoL2kzODYveDg2LWxpbnV4LXNldHVwLmMK
Pj4+PiBpbmRleCAwNTdlZTE0Li42ZGM0YWRjIDEwMDY0NAo+Pj4+IC0tLSBhL2tleGVjL2FyY2gv
aTM4Ni94ODYtbGludXgtc2V0dXAuYwo+Pj4+ICsrKyBiL2tleGVjL2FyY2gvaTM4Ni94ODYtbGlu
dXgtc2V0dXAuYwo+Pj4+IEBAIC01Nyw2ICs1Nyw4IEBAIHZvaWQgc2V0dXBfbGludXhfYm9vdGxv
YWRlcl9wYXJhbWV0ZXJzX2hpZ2goCj4+Pj4gwqDCoMKgwqDCoCBjaGFyICpjbWRsaW5lX3B0cjsK
Pj4+PiDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgaW5pdHJkX2Jhc2UsIGluaXRyZF9hZGRyX21h
eDsKPj4+Pgo+Pj4+ICvCoMKgwqAgcHJpbnRmKCJGaW5hbCBrZXJuZWwgY21kbGluZTogJyVzJ1xu
IiwgY21kbGluZSk7Cj4+Pj4gKwo+Pj4KPj4+IElmIHdlIHdhbnQgdG8gYWRkIHRoaXMgZm9yIGRl
YnVnZ2luZyBwdXJwb3NlcywgaXRzIGJldHRlciB0byBoYXZlIGRiZ3ByaW50ZigpIGluc3RlYWQg
b2YgcHJpbnRmKCkgCj4+PiBoZXJlLiBUaGlzIHdpbGwgbWFrZSBzdXJlIHRoYXQgdGhlIGRlYnVn
IG1lc3NhZ2UgaXMgcHJpbnRlZCBvbmx5IHdoZW4gJy1kJyBmbGFnIGlzIHNwZWNpZmllZCAKPj4+
IHdoaWxlIGNhbGxpbmcga2V4ZWMgdXRpbGl0eSBmcm9tIGNvbW1hbmQtbGluZS4KPj4KPj4gWWVz
ISBJIHVzZWQgcHJpbnRmKCkgbWVyZWx5IHRvIHByb3ZpZGUgYW4gZXhhbXBsZSBvZiB3aGF0IGlz
IHBvc3NpYmxlLgo+IAo+IE9rLgo+IAo+Pj4+IMKgwqDCoMKgwqAgLyogU2F5IEknbSBhIGJvb3Qg
bG9hZGVyICovCj4+Pj4gwqDCoMKgwqDCoCByZWFsX21vZGUtPmxvYWRlcl90eXBlID0gTE9BREVS
X1RZUEVfS0VYRUMgPDwgNDsKPj4+Pgo+Pj4+IHJlc3VsdHMgaW4gdGhlIGZvbGxvd2luZyBvbiBh
IHN5c3RlbWQtYmFzZWQgc3lzdGVtIChmb3JtYXR0ZWQgdG8gZml0Cj4+Pj4gaW4gNzAgY2hhciBs
aW5lcyk6Cj4+Pj4KPj4+PiAlIHN5c3RlbWN0bCBzdGF0dXMgLWwga2R1bXAuc2VydmljZQo+Pj4+
IOKXjyBrZHVtcC5zZXJ2aWNlIC0gQ3Jhc2ggcmVjb3Zlcnkga2VybmVsIGFybWluZwo+Pj4+IMKg
wqDCoCBMb2FkZWQ6IGxvYWRlZCAoL3Vzci9saWIvc3lzdGVtZC9zeXN0ZW0va2R1bXAuc2Vydmlj
ZTsgZW5hYmxlZDsKPj4+PiDCoMKgwqDCoCB2ZW5kb3IgcHJlc2V0OiBlbmFibGVkKQo+Pj4+IMKg
wqDCoCBBY3RpdmU6IGFjdGl2ZSAoZXhpdGVkKSBzaW5jZSBNb24gMjAxOS0xMi0xNiAxNDo1OToy
MSBFU1Q7Cj4+Pj4gwqDCoMKgwqAgMm1pbiA1M3MgYWdvCj4+Pj4gwqDCoCBQcm9jZXNzOiAxNDA1
OCBFeGVjU3RvcD0vdXNyL2Jpbi9rZHVtcGN0bCBzdG9wIChjb2RlPWV4aXRlZCwKPj4+PiDCoMKg
wqAgc3RhdHVzPTAvU1VDQ0VTUykKPj4+PiDCoMKgIFByb2Nlc3M6IDE0MDczIEV4ZWNTdGFydD0v
dXNyL2Jpbi9rZHVtcGN0bCBzdGFydCAoY29kZT1leGl0ZWQsCj4+Pj4gwqDCoMKgIHN0YXR1cz0w
L1NVQ0NFU1MpCj4+Pj4gwqAgTWFpbiBQSUQ6IDE0MDczIChjb2RlPWV4aXRlZCwgc3RhdHVzPTAv
U1VDQ0VTUykKPj4+Pgo+Pj4+IERlYyAxNiAxNDo1OToxOCB2bTM2NCBrZHVtcGN0bFsxNDA1OF06
IFN0b3BwaW5nIGtkdW1wOiBbT0tdCj4+Pj4gRGVjIDE2IDE0OjU5OjE4IHZtMzY0IHN5c3RlbWRb
MV06IFN0b3BwZWQgQ3Jhc2ggcmVjb3Zlcnkga2VybmVsIGFybWluZy4KPj4+PiBEZWMgMTYgMTQ6
NTk6MTggdm0zNjQgc3lzdGVtZFsxXTogU3RhcnRpbmcgQ3Jhc2ggcmVjb3Zlcnkga2VybmVsIGFy
bWluZy4uLgo+Pj4+IERlYyAxNiAxNDo1OToyMSB2bTM2NCBrZHVtcGN0bFsxNDA3M106IEZpbmFs
IGtlcm5lbCBjbWRsaW5lOiAnQk9PVF9JTUFHRT0KPj4+PiDCoCAvdm1saW51ei00LjE0LjM1LTE5
MDIuNy4zLjEuZWw3dWVrLng4Nl82NCBybyByaGdiIHF1aWV0IExBTkc9ZW5fVVMuVVRGLTgKPj4+
PiDCoCBpcnFwb2xsIG5yX2NwdXM9MSByZXNldF9kZXZpY2VzIGNncm91cF9kaXNhYmxlPW1lbW9y
eSBtY2U9b2ZmIG51bWE9b2ZmCj4+Pj4gwqAgdWRldi5jaGlsZHJlbi1tYXg9MiBwYW5pYz0xMCBy
b290ZmxhZ3M9bm9mYWlsIGFjcGlfbm9fbWVtaG90cGx1Zwo+Pj4+IMKgIHRyYW5zcGFyZW50X2h1
Z2VwYWdlPW5ldmVyIG5va2FzbHIgbm92bWNvcmVkZCBkaXNhYmxlX2NwdV9hcGljaWQ9MAo+Pj4+
IMKgIGVsZmNvcmVoZHI9OTAxNDkySycKPj4+PiBEZWMgMTYgMTQ6NTk6MjEgdm0zNjQgc3lzdGVt
ZFsxXTogU3RhcnRlZCBDcmFzaCByZWNvdmVyeSBrZXJuZWwgYXJtaW5nLgo+Pj4+IERlYyAxNiAx
NDo1OToyMSB2bTM2NCBrZHVtcGN0bFsxNDA3M106IGtleGVjOiBsb2FkZWQga2R1bXAga2VybmVs
Cj4+Pj4gRGVjIDE2IDE0OjU5OjIxIHZtMzY0IGtkdW1wY3RsWzE0MDczXTogU3RhcnRpbmcga2R1
bXA6IFtPS10KPj4+Pgo+Pj4+IGFuZCB0aGUgb3V0cHV0IGlzIGFsc28gYXZhaWxhYmxlIGluIC92
YXIvbG9nL21lc3NhZ2VzLgo+Pj4KPj4+IFNpbmNlIGtkdW1wY3RsIGlzIGEgZGlzdHJpYnV0aW9u
IHNwZWNpZmljIHNjcmlwdCAoVXNlZCBieSBGZWRvcmEvUkhFTCksIHdoaWNoIGludm9rZXMgJ2tl
eGVjJyAKPj4+IHVuZGVyIHRoZSBob29kLCB3ZSBjYW4gZGlzY3VzcyB0aGUgZmVhdHVyZXMgc3Vw
cG9ydGVkIGJ5ICdrZXhlYycgcmF0aGVyIHRoYW4gdGhlIGRpc3RyaWJ1dGlvbiAKPj4+IHNwZWNp
ZmljIHNjcmlwdHMgKGRpc2N1c3Npb24gcmVnYXJkaW5nIHdoaWNoIGFyZSBwcm9iYWJseSBtb3Jl
IHN1aXRlZCB0byB0aGUgRmVkb3JhIGtleGVjIGxpc3Q6IAo+Pj4ga2V4ZWNAbGlzdHMuZmVkb3Jh
cHJvamVjdC5vcmcpCj4+Cj4+IEFncmVlZCwgdGhpcyBSRkMgaXMgZm9yIGEgY2hhbmdlIHRvIGtl
eGVjLCBub3RpbmcgdGhhdCB3cmFwcGVyIHNjcmlwdHMgc3VjaCBhcyBrZHVtcGN0bCBhcmUgCj4+
IGluc3VmZmljaWVudCB0byBwcm92aWRlIHRoZSBmdW5jdGlvbmFsaXR5IHJlcXVlc3RlZC4KPj4K
Pj4+Cj4+Pj4gVGhlcmUgbWlnaHQgYWxzbyBiZSBhbiBvcHBvcnR1bml0eSB0byBjb25zb2xpZGF0
ZSBoYW5kbGluZyBvZiB0aGUKPj4+PiBrZXJuZWwgY29tbWFuZCBsaW5lLCBhcyBtb3N0IGFyY2gg
dGFyZ2V0cyBoYXZlIHRoZSAtLWNvbW1hbmQtbGluZSwKPj4+PiAtLWFwcGVuZCwgYW5kIC0tcmV1
c2UtY21kbGluZSBvcHRpb25zLCB0aG91Z2ggZWFjaCBhcmNoIGluZGVwZW5kZW50bHkKPj4+PiBj
b2RlcyB0aGUgc3VwcG9ydCBmb3IgdGhlc2Ugb3B0aW9ucy4KPj4+Cj4+PiBUaGlzIHNlZW1zIGxp
a2UgYSBnb29kIGlkZWEsIG1vcmUgb24gdGhlIHNhbWUgYmVsb3cgLi4uCj4+Pgo+Pj4+IE5vdGU6
IFNpbXBseSBwcmludGluZyB0aGUgY21kbGluZSBpbiBzY3JpcHRzIHN1Y2ggYXMga2R1bXBjdGwg
bWF5IG5vdAo+Pj4+IHJlc3VsdCBpbiB0aGUgc2FtZSBvcmRlcmluZywgYW5kIHdpbGwgb21pdCBh
bnkgYWRkaXRpb24gbWFkZSBpbnRlcm5hbGx5Cj4+Pj4gYnkga2V4ZWMsIHN1Y2ggYXMgdGhlIGVs
ZmNvcmVoZHIuCj4+Pj4KPj4+PiBJIHByb3Bvc2UgdGhlIGFkZGl0aW9uIG9mIGFuIG9wdGlvbiB0
byBrZXhlYywgLS1wcmludC1rY2wgKHRvIG1pcnJvcgo+Pj4+IC0tcHJpbnQtY2tyKSwgdGhhdCB3
b3VsZCBjb250cm9sIHN1Y2ggcHJpbnRpbmcsIGFzIHdlbGwgYXMgdGhlIG5lZWRlZAo+Pj4+IHBl
ciBhcmNoIGNvbmRpdGlvbmFsIHByaW50IHN0YXRlbWVudHMgc2ltaWxhciB0byB0aGUgYWJvdmUg
dG8gcHJpbnQgdGhlCj4+Pj4gZmluYWwgY29uc3RydWN0ZWQga2VybmVsIGNvbW1hbmQgbGluZS4K
Pj4+Cj4+PiAuLi4gSSBhbSBub3Qgc3VyZSBJIHVuZGVyc3RhbmQgdGhlIGFib3ZlIHBvaW50LiBM
b29raW5nIGF0IHRoZSBsYXRlc3Qga2V4ZWMtdG9vbHMgbWFuIHBhZ2UgKHNlZTogCj4+PiBnaXQ6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL3V0aWxzL2tlcm5lbC9rZXhlYy9rZXhlYy10b29scy5n
aXQpLCBJIGNvdWxkbid0IGZpbmQgJy0tcHJpbnQtY2tyJyAKPj4+IG9wdGlvbjoKPj4+Cj4+PiAt
LXByaW50LWNrci1zaXplOiBQcmludCBjcmFzaCBrZXJuZWwgcmVnaW9uIHNpemUsIGlmIGF2YWls
YWJsZS4KPj4+Cj4+PiBDYW4geW91IHBsZWFzZSBlbGFib3JhdGUgb24gJy0tcHJpbnQtY2tyJyBh
bmQgJy0tcHJpbnQta2NsJyBvcHRpb25zIG1vcmUuCj4+Cj4+IFlvdSBwcm9wb3NlZCB1c2luZyBk
YmdwcmludGYoKSBpbiBjb25qdW5jdGlvbiB3aXRoIHRoZSAtZCBvcHRpb247IGFuZCB0aGF0IG1h
a2VzIGdyZWF0IHNlbnNlOyBJIAo+PiBoYWQgbm90IGluIG15IGVhZ2VybmVzcyB0byBwcm9kdWNl
IHRoaXMgUkZDLgo+IAo+IE9rLCBubyBwcm9ibGVtLgo+IAo+PiBJbnN0ZWFkLCBJIHByb3Bvc2Vk
IGFub3RoZXIgb3B0aW9uIC0tcHJpbnQta2NsIChmb3IgcHJpbnQga2VybmVsIGNvbW1hbmQgbGlu
ZSkgdG8gY29uZGl0aW9uYWxseSAKPj4gcHJpbnQgdGhlIGluZm9ybWF0aW9uLiBJIHdhcyB1c2lu
ZyAtLXByaW50LWNrciBhcyBhbiBleGFtcGxlIG9mIHNpbWlsYXIgb3B0aW9uIHVzZWQgdG8gcHJp
bnQgCj4+IGluZm9ybWF0aW9uIChpbiB0aGlzIGNhc2UsIHRoZSBjcmFzaCBrZXJuZWwgcmVnaW9u
KS4gT3RoZXIgdGhhbiBhIHNpbWlsYXIgbmFtaW5nIGNvbnZlbnRpb24sIHRoZXJlIAo+PiBpcyBu
byBjb3JyZWxhdGlvbiBiZXR3ZWVuIC0tcHJpbnQtY2tyIGFuZCAtLXByaW50LWtjbCwgYW5kIGlu
ZGVlZCBldmVuIC0tcHJpbnQta2NsIG1pZ2h0IGJlIAo+PiB1bi1uZWNlc3NhcnkgZ2l2ZW4gZGJn
cHJpbnRmKCkuCj4gCj4gU3VyZSwgbWFrZXMgc2Vuc2UuCj4gSSB0aGluayB5b3UgY2FuIGdvIGFo
ZWFkIGFuZCBwb3N0IGEgZm9ybWFsIHBhdGNoIHdpdGggJ2RiZ3ByaW50ZigpJyBiZWluZyB1c2Vk
LiBPciBpZiB5b3Ugd2FudCwgSSAKPiBjYW4gdHJ5IGFuZCBwcm9wb3NlIGEgc2ltaWxhciBwYXRj
aCBmb3IgdXBzdHJlYW0ga2V4ZWMtdG9vbHMuCj4gCj4gUGxlYXNlIGxldCBtZSBrbm93Lgo+IAo+
IFRoYW5rcywKPiBCaHVwZXNoCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
