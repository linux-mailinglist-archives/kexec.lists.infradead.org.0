Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C17C121B54
	for <lists+kexec@lfdr.de>; Mon, 16 Dec 2019 21:54:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l7Flw40AOsEg623H3cWTj5aAlKdAh1CdOe65ejYnYrk=; b=fChiFFoz4fw3lP
	UxZHTh0I3yFhlDhlioFbhWmVVPl9Kzr/PYSKLjmcOO/H2WB8kaDnR86w6+D5sfC9Cw7hvwZ9YCV+b
	hvJYTed9kyuflW29DHgC6OsAnQu52RdB4klOLTiEN4HeIwxcwdfg8WUj6G/YfdaYUtiPCnERtx/8n
	no60s7lEa/OFYyHu2Z5YyTrxAy6KX1VMO3VIl58cTPtOQdz5gIWl1rsNIxQmUxBF2c9yTvhGhrTlW
	NFvD0CVZoXW4J/IgZqYkWj+RlNxBZkjDUSL1kcw6eod5cBHeuT1KVpbhnhq7AekaUYDQS2DlPLkhT
	dJDaG5eZIB0AsihaCKnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igxNn-0006va-G4; Mon, 16 Dec 2019 20:54:23 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igxNk-0006vE-7j
 for kexec@lists.infradead.org; Mon, 16 Dec 2019 20:54:21 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBGKn8RY002070
 for <kexec@lists.infradead.org>; Mon, 16 Dec 2019 20:54:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=U0kq1mSjEv01L23ifpL2MtdOsneBlR6i97vHZn/Vd6g=;
 b=nVDPqCdL6Z44YWUn9hb4g6P5ONP/6voTJfdav4e894xFMl5/iWz+hxtJC6E97lJ7ZjLH
 bu1iYoRwWT6ZU4m7q6lUVa60zYd8a01m9FMUOGjf38eEdE6DbYJTj9dNsltUMMV/h9oN
 I/8XIp0DBj0VtZRM22w4o3kMnwW/005WI87pgHi57HMf/V0Or0BEYv7dNukFDo4Xg/6q
 DIfUP3sCstx0kxJr0NElKO27o20Qem5hAevR3Ds5U1tmmQAl6mYR2Sr5/pyptMWMfUQT
 +rBZPVNBwbM1uDNwObPonQEwE2VjLyEoBh6GYESQNpNahrZe5CriExT6rvCYUYeNmCP4 VQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2wvqpq2657-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Mon, 16 Dec 2019 20:54:16 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBGKnJb9077138
 for <kexec@lists.infradead.org>; Mon, 16 Dec 2019 20:54:15 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2ww9vpy3ya-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Mon, 16 Dec 2019 20:54:15 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xBGKsES3014738
 for <kexec@lists.infradead.org>; Mon, 16 Dec 2019 20:54:14 GMT
Received: from dhcp-10-154-177-202.vpn.oracle.com (/10.154.177.202)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 16 Dec 2019 12:54:14 -0800
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [RFC] printing the final constructed kernel command line
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <056beee8-6caf-1aec-a111-1d0c37bcb137@oracle.com>
Date: Mon, 16 Dec 2019 14:54:11 -0600
Message-Id: <0E3D2BDA-ED70-40C6-8D11-1735D44A40CF@oracle.com>
References: <056beee8-6caf-1aec-a111-1d0c37bcb137@oracle.com>
To: Eric DeVolder <eric.devolder@oracle.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9473
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912160175
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9473
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912160175
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_125420_368046_0535973A 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Cgo+IE9uIERlYyAxNiwgMjAxOSwgYXQgMjozMiBQTSwgRXJpYyBEZVZvbGRlciA8ZXJpYy5kZXZv
bGRlckBvcmFjbGUuY29tPiB3cm90ZToKPiAKPiBUaGUgLS1jb21tYW5kLWxpbmUsIC0tYXBwZW5k
LCBhbmQgLS1yZXVzZS1jbWRsaW5lIG9wdGlvbnMgdG8ga2V4ZWMgY2FuCj4gYmUgdXNlZCBpbiBj
b21iaW5hdGlvbiB0byBjcmFmdCBhIGtlcm5lbCBjb21tYW5kIGxpbmUgZm9yIGEga2VybmVsCj4g
bG9hZGVkIHZpYSBrZXhlYy4gSW4gYWRkaXRpb24sIHRoZSBrZXhlYyB0b29sIG1heSBhbHNvIG1h
bmlwdWxhdGUKPiBmdXJ0aGVyIHRoZSBjb21tYW5kIGxpbmUsIGVnLiAgZWxmY29yZWhkciBhZGRp
dGlvbi4KPiAKPiBUbyBhaWQgaW4gZGVidWdnaW5nIGtkdW1wL2tleGVjIHJlbGF0ZWQgaXNzdWVz
LCBpdCB3b3VsZCBiZSBoZWxwZnVsCj4gZm9yIGtleGVjIHRvIHByaW50IHRoZSBmaW5hbCBjb25z
dHJ1Y3RlZCBrZXJuZWwgY29tbWFuZCBsaW5lIGFyZ3VtZW50Lgo+IAo+IEZvciBleGFtcGxlLCB0
aGUgZm9sbG93aW5nIHNpbXBsZSBjaGFuZ2UgKGZvciBpMzg2L3g4Nl82NCk6Cj4gCj4gZGlmZiAt
LWdpdCBhL2tleGVjL2FyY2gvaTM4Ni94ODYtbGludXgtc2V0dXAuYyBiL2tleGVjL2FyY2gvaTM4
Ni94ODYtbGludXgtc2V0dXAuYwo+IGluZGV4IDA1N2VlMTQuLjZkYzRhZGMgMTAwNjQ0Cj4gLS0t
IGEva2V4ZWMvYXJjaC9pMzg2L3g4Ni1saW51eC1zZXR1cC5jCj4gKysrIGIva2V4ZWMvYXJjaC9p
Mzg2L3g4Ni1saW51eC1zZXR1cC5jCj4gQEAgLTU3LDYgKzU3LDggQEAgdm9pZCBzZXR1cF9saW51
eF9ib290bG9hZGVyX3BhcmFtZXRlcnNfaGlnaCgKPiAJY2hhciAqY21kbGluZV9wdHI7Cj4gCXVu
c2lnbmVkIGxvbmcgaW5pdHJkX2Jhc2UsIGluaXRyZF9hZGRyX21heDsKPiAKPiArICAgIHByaW50
ZigiRmluYWwga2VybmVsIGNtZGxpbmU6ICclcydcbiIsIGNtZGxpbmUpOwo+ICsKPiAJLyogU2F5
IEknbSBhIGJvb3QgbG9hZGVyICovCj4gCXJlYWxfbW9kZS0+bG9hZGVyX3R5cGUgPSBMT0FERVJf
VFlQRV9LRVhFQyA8PCA0Owo+IAo+IHJlc3VsdHMgaW4gdGhlIGZvbGxvd2luZyBvbiBhIHN5c3Rl
bWQtYmFzZWQgc3lzdGVtIChmb3JtYXR0ZWQgdG8gZml0Cj4gaW4gNzAgY2hhciBsaW5lcyk6Cj4g
Cj4gJSBzeXN0ZW1jdGwgc3RhdHVzIC1sIGtkdW1wLnNlcnZpY2UKPiDil48ga2R1bXAuc2Vydmlj
ZSAtIENyYXNoIHJlY292ZXJ5IGtlcm5lbCBhcm1pbmcKPiAgIExvYWRlZDogbG9hZGVkICgvdXNy
L2xpYi9zeXN0ZW1kL3N5c3RlbS9rZHVtcC5zZXJ2aWNlOyBlbmFibGVkOwo+ICAgIHZlbmRvciBw
cmVzZXQ6IGVuYWJsZWQpCj4gICBBY3RpdmU6IGFjdGl2ZSAoZXhpdGVkKSBzaW5jZSBNb24gMjAx
OS0xMi0xNiAxNDo1OToyMSBFU1Q7Cj4gICAgMm1pbiA1M3MgYWdvCj4gIFByb2Nlc3M6IDE0MDU4
IEV4ZWNTdG9wPS91c3IvYmluL2tkdW1wY3RsIHN0b3AgKGNvZGU9ZXhpdGVkLAo+ICAgc3RhdHVz
PTAvU1VDQ0VTUykKPiAgUHJvY2VzczogMTQwNzMgRXhlY1N0YXJ0PS91c3IvYmluL2tkdW1wY3Rs
IHN0YXJ0IChjb2RlPWV4aXRlZCwKPiAgIHN0YXR1cz0wL1NVQ0NFU1MpCj4gTWFpbiBQSUQ6IDE0
MDczIChjb2RlPWV4aXRlZCwgc3RhdHVzPTAvU1VDQ0VTUykKPiAKPiBEZWMgMTYgMTQ6NTk6MTgg
dm0zNjQga2R1bXBjdGxbMTQwNThdOiBTdG9wcGluZyBrZHVtcDogW09LXQo+IERlYyAxNiAxNDo1
OToxOCB2bTM2NCBzeXN0ZW1kWzFdOiBTdG9wcGVkIENyYXNoIHJlY292ZXJ5IGtlcm5lbCBhcm1p
bmcuCj4gRGVjIDE2IDE0OjU5OjE4IHZtMzY0IHN5c3RlbWRbMV06IFN0YXJ0aW5nIENyYXNoIHJl
Y292ZXJ5IGtlcm5lbCBhcm1pbmcuLi4KPiBEZWMgMTYgMTQ6NTk6MjEgdm0zNjQga2R1bXBjdGxb
MTQwNzNdOiBGaW5hbCBrZXJuZWwgY21kbGluZTogJ0JPT1RfSU1BR0U9Cj4gL3ZtbGludXotNC4x
NC4zNS0xOTAyLjcuMy4xLmVsN3Vlay54ODZfNjQgcm8gcmhnYiBxdWlldCBMQU5HPWVuX1VTLlVU
Ri04Cj4gaXJxcG9sbCBucl9jcHVzPTEgcmVzZXRfZGV2aWNlcyBjZ3JvdXBfZGlzYWJsZT1tZW1v
cnkgbWNlPW9mZiBudW1hPW9mZgo+IHVkZXYuY2hpbGRyZW4tbWF4PTIgcGFuaWM9MTAgcm9vdGZs
YWdzPW5vZmFpbCBhY3BpX25vX21lbWhvdHBsdWcKPiB0cmFuc3BhcmVudF9odWdlcGFnZT1uZXZl
ciBub2thc2xyIG5vdm1jb3JlZGQgZGlzYWJsZV9jcHVfYXBpY2lkPTAKPiBlbGZjb3JlaGRyPTkw
MTQ5MksnCj4gRGVjIDE2IDE0OjU5OjIxIHZtMzY0IHN5c3RlbWRbMV06IFN0YXJ0ZWQgQ3Jhc2gg
cmVjb3Zlcnkga2VybmVsIGFybWluZy4KPiBEZWMgMTYgMTQ6NTk6MjEgdm0zNjQga2R1bXBjdGxb
MTQwNzNdOiBrZXhlYzogbG9hZGVkIGtkdW1wIGtlcm5lbAo+IERlYyAxNiAxNDo1OToyMSB2bTM2
NCBrZHVtcGN0bFsxNDA3M106IFN0YXJ0aW5nIGtkdW1wOiBbT0tdCj4gCj4gYW5kIHRoZSBvdXRw
dXQgaXMgYWxzbyBhdmFpbGFibGUgaW4gL3Zhci9sb2cvbWVzc2FnZXMuCj4gCj4gVGhlcmUgbWln
aHQgYWxzbyBiZSBhbiBvcHBvcnR1bml0eSB0byBjb25zb2xpZGF0ZSBoYW5kbGluZyBvZiB0aGUK
PiBrZXJuZWwgY29tbWFuZCBsaW5lLCBhcyBtb3N0IGFyY2ggdGFyZ2V0cyBoYXZlIHRoZSAtLWNv
bW1hbmQtbGluZSwKPiAtLWFwcGVuZCwgYW5kIC0tcmV1c2UtY21kbGluZSBvcHRpb25zLCB0aG91
Z2ggZWFjaCBhcmNoIGluZGVwZW5kZW50bHkKPiBjb2RlcyB0aGUgc3VwcG9ydCBmb3IgdGhlc2Ug
b3B0aW9ucy4KPiAKPiBOb3RlOiBTaW1wbHkgcHJpbnRpbmcgdGhlIGNtZGxpbmUgaW4gc2NyaXB0
cyBzdWNoIGFzIGtkdW1wY3RsIG1heSBub3QKPiByZXN1bHQgaW4gdGhlIHNhbWUgb3JkZXJpbmcs
IGFuZCB3aWxsIG9taXQgYW55IGFkZGl0aW9uIG1hZGUgaW50ZXJuYWxseQo+IGJ5IGtleGVjLCBz
dWNoIGFzIHRoZSBlbGZjb3JlaGRyLgo+IAo+IEkgcHJvcG9zZSB0aGUgYWRkaXRpb24gb2YgYW4g
b3B0aW9uIHRvIGtleGVjLCAtLXByaW50LWtjbCAodG8gbWlycm9yCj4gLS1wcmludC1ja3IpLCB0
aGF0IHdvdWxkIGNvbnRyb2wgc3VjaCBwcmludGluZywgYXMgd2VsbCBhcyB0aGUgbmVlZGVkCj4g
cGVyIGFyY2ggY29uZGl0aW9uYWwgcHJpbnQgc3RhdGVtZW50cyBzaW1pbGFyIHRvIHRoZSBhYm92
ZSB0byBwcmludCB0aGUKPiBmaW5hbCBjb25zdHJ1Y3RlZCBrZXJuZWwgY29tbWFuZCBsaW5lLgoK
SXMgdGhpcyBjb21tb24gY29kZSBhdmFpbGFibGUgaW4gdGhlIEFybSBlbnZpcm9ubWVudCAgdG9v
ID8KCklmIG5vdCwgY291bGQgeW91IG1ha2UgaXQgc28gPwoKCgoKPiAKPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGtleGVjIG1haWxpbmcgbGlzdAo+
IGtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwczovL3VybGRlZmVuc2UucHJvb2Zwb2lu
dC5jb20vdjIvdXJsP3U9aHR0cC0zQV9fbGlzdHMuaW5mcmFkZWFkLm9yZ19tYWlsbWFuX2xpc3Rp
bmZvX2tleGVjJmQ9RHdJR2FRJmM9Um9QMVl1bUNYQ2dhV0h2bFpZUjhQWmg4QnY3cUlyTVVCNjVl
YXBJX0puRSZyPXQyZlBnOUQ4N0Y3RDhqbTBfM0NHOXlvaUlLZFJnNHFjX3RoQnc0YnpNaGMmbT1a
aGhhWjI3T2pacG5wbVZOUF8yQ2dEaHBuSU5Ybmt2dDlQRVQweG50SU44JnM9UDFCUmRWdFV6a0M1
V3RBR1B5VEJRcmVTSS00bnNURXVNSjctRC01V3p2VSZlPSAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2tleGVjCg==
