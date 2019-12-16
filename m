Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B55121AF1
	for <lists+kexec@lfdr.de>; Mon, 16 Dec 2019 21:32:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MHZERIXHfxMLQOrDI4ijzwWBYT1z8AbihH93hbIVJhY=; b=gmvHI1/lpicvuu
	FyKRofbp/HyaonYpvfnfQUxG9e3E9vdDMOymbBt3DkQQzrbfRB0K0pFFDXzTAyFE6DBSo4yFXkaDB
	w6UKgMO+0HX007jgNz3E0UfKKVZx32Zlph2CNY5ZpgxsG85eBxFzkUqQTrzGnt23KGiapLUGH5FMa
	B89IEpzA0fpU/nlI4YTLxZHtwAGQFozexCwAKChVNOmrGhmP1vh3g3MTPsLoQwUWwOiaWFpoqLXyF
	oBo2oTQUHQmmklBjqDUonVSAmMbsda2lGvLK/5zWwUBAPWA1O41A1uHJ8zImvS6CUtUOoM9D9nZ56
	3o/l+jqw/msYmc/cH2/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igx2O-00074x-J3; Mon, 16 Dec 2019 20:32:16 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igx2L-00074U-1b
 for kexec@lists.infradead.org; Mon, 16 Dec 2019 20:32:14 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBGKTR29182067
 for <kexec@lists.infradead.org>; Mon, 16 Dec 2019 20:32:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : from : subject :
 message-id : date : mime-version : content-type :
 content-transfer-encoding; s=corp-2019-08-05;
 bh=IetPkDUmlviCw0wUq3hqfryzKyL3n53ae4g/2C/hKgA=;
 b=TW7vrSvCBA2qW0Cs50NLvVx+hlgbagV9OH8d89DZFtK9aUGYom/Y0aMaLB57bpwoSwon
 DUSrnkGXawElHiPee35qXiEwvkqijovW/6np9oJxHZnQM34x9y9ll2RdveHLNlUTAA/G
 PnUiZYvYd8rkFlPL0BCjknL1Qs0J9Y/HDNe8DAYAoy04P4CzJeMAIRYsySRJ8RT6W1U4
 q++wmx3eooG/Rd/XzrbZyVps1tJouNxxj+oobqkS7vgdX9pn0gv4KE7cHfuFew99iaBA
 HfmXP2xXyYMbLUoFJLhS5T/WQd26okYQpeGLhHGgK6QVOytBmx1OU6zxaiRGKvftqtg1 KQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2wvrcr2119-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Mon, 16 Dec 2019 20:32:07 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBGKNrc2135256
 for <kexec@lists.infradead.org>; Mon, 16 Dec 2019 20:32:06 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2ww98t5q1j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Mon, 16 Dec 2019 20:32:06 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xBGKW59a000861
 for <kexec@lists.infradead.org>; Mon, 16 Dec 2019 20:32:05 GMT
Received: from [10.149.224.210] (/10.149.224.210)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 16 Dec 2019 12:32:05 -0800
To: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
From: Eric DeVolder <eric.devolder@oracle.com>
Subject: [RFC] printing the final constructed kernel command line
Message-ID: <056beee8-6caf-1aec-a111-1d0c37bcb137@oracle.com>
Date: Mon, 16 Dec 2019 14:32:04 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9473
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912160171
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9473
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912160172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_123213_175167_B9518823 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

VGhlIC0tY29tbWFuZC1saW5lLCAtLWFwcGVuZCwgYW5kIC0tcmV1c2UtY21kbGluZSBvcHRpb25z
IHRvIGtleGVjIGNhbgpiZSB1c2VkIGluIGNvbWJpbmF0aW9uIHRvIGNyYWZ0IGEga2VybmVsIGNv
bW1hbmQgbGluZSBmb3IgYSBrZXJuZWwKbG9hZGVkIHZpYSBrZXhlYy4gSW4gYWRkaXRpb24sIHRo
ZSBrZXhlYyB0b29sIG1heSBhbHNvIG1hbmlwdWxhdGUKZnVydGhlciB0aGUgY29tbWFuZCBsaW5l
LCBlZy4gIGVsZmNvcmVoZHIgYWRkaXRpb24uCgpUbyBhaWQgaW4gZGVidWdnaW5nIGtkdW1wL2tl
eGVjIHJlbGF0ZWQgaXNzdWVzLCBpdCB3b3VsZCBiZSBoZWxwZnVsCmZvciBrZXhlYyB0byBwcmlu
dCB0aGUgZmluYWwgY29uc3RydWN0ZWQga2VybmVsIGNvbW1hbmQgbGluZSBhcmd1bWVudC4KCkZv
ciBleGFtcGxlLCB0aGUgZm9sbG93aW5nIHNpbXBsZSBjaGFuZ2UgKGZvciBpMzg2L3g4Nl82NCk6
CgpkaWZmIC0tZ2l0IGEva2V4ZWMvYXJjaC9pMzg2L3g4Ni1saW51eC1zZXR1cC5jIGIva2V4ZWMv
YXJjaC9pMzg2L3g4Ni1saW51eC1zZXR1cC5jCmluZGV4IDA1N2VlMTQuLjZkYzRhZGMgMTAwNjQ0
Ci0tLSBhL2tleGVjL2FyY2gvaTM4Ni94ODYtbGludXgtc2V0dXAuYworKysgYi9rZXhlYy9hcmNo
L2kzODYveDg2LWxpbnV4LXNldHVwLmMKQEAgLTU3LDYgKzU3LDggQEAgdm9pZCBzZXR1cF9saW51
eF9ib290bG9hZGVyX3BhcmFtZXRlcnNfaGlnaCgKICAJY2hhciAqY21kbGluZV9wdHI7CiAgCXVu
c2lnbmVkIGxvbmcgaW5pdHJkX2Jhc2UsIGluaXRyZF9hZGRyX21heDsKCisgICAgcHJpbnRmKCJG
aW5hbCBrZXJuZWwgY21kbGluZTogJyVzJ1xuIiwgY21kbGluZSk7CisKICAJLyogU2F5IEknbSBh
IGJvb3QgbG9hZGVyICovCiAgCXJlYWxfbW9kZS0+bG9hZGVyX3R5cGUgPSBMT0FERVJfVFlQRV9L
RVhFQyA8PCA0OwoKcmVzdWx0cyBpbiB0aGUgZm9sbG93aW5nIG9uIGEgc3lzdGVtZC1iYXNlZCBz
eXN0ZW0gKGZvcm1hdHRlZCB0byBmaXQKaW4gNzAgY2hhciBsaW5lcyk6CgolIHN5c3RlbWN0bCBz
dGF0dXMgLWwga2R1bXAuc2VydmljZQril48ga2R1bXAuc2VydmljZSAtIENyYXNoIHJlY292ZXJ5
IGtlcm5lbCBhcm1pbmcKICAgIExvYWRlZDogbG9hZGVkICgvdXNyL2xpYi9zeXN0ZW1kL3N5c3Rl
bS9rZHVtcC5zZXJ2aWNlOyBlbmFibGVkOwogICAgIHZlbmRvciBwcmVzZXQ6IGVuYWJsZWQpCiAg
ICBBY3RpdmU6IGFjdGl2ZSAoZXhpdGVkKSBzaW5jZSBNb24gMjAxOS0xMi0xNiAxNDo1OToyMSBF
U1Q7CiAgICAgMm1pbiA1M3MgYWdvCiAgIFByb2Nlc3M6IDE0MDU4IEV4ZWNTdG9wPS91c3IvYmlu
L2tkdW1wY3RsIHN0b3AgKGNvZGU9ZXhpdGVkLAogICAgc3RhdHVzPTAvU1VDQ0VTUykKICAgUHJv
Y2VzczogMTQwNzMgRXhlY1N0YXJ0PS91c3IvYmluL2tkdW1wY3RsIHN0YXJ0IChjb2RlPWV4aXRl
ZCwKICAgIHN0YXR1cz0wL1NVQ0NFU1MpCiAgTWFpbiBQSUQ6IDE0MDczIChjb2RlPWV4aXRlZCwg
c3RhdHVzPTAvU1VDQ0VTUykKCkRlYyAxNiAxNDo1OToxOCB2bTM2NCBrZHVtcGN0bFsxNDA1OF06
IFN0b3BwaW5nIGtkdW1wOiBbT0tdCkRlYyAxNiAxNDo1OToxOCB2bTM2NCBzeXN0ZW1kWzFdOiBT
dG9wcGVkIENyYXNoIHJlY292ZXJ5IGtlcm5lbCBhcm1pbmcuCkRlYyAxNiAxNDo1OToxOCB2bTM2
NCBzeXN0ZW1kWzFdOiBTdGFydGluZyBDcmFzaCByZWNvdmVyeSBrZXJuZWwgYXJtaW5nLi4uCkRl
YyAxNiAxNDo1OToyMSB2bTM2NCBrZHVtcGN0bFsxNDA3M106IEZpbmFsIGtlcm5lbCBjbWRsaW5l
OiAnQk9PVF9JTUFHRT0KICAvdm1saW51ei00LjE0LjM1LTE5MDIuNy4zLjEuZWw3dWVrLng4Nl82
NCBybyByaGdiIHF1aWV0IExBTkc9ZW5fVVMuVVRGLTgKICBpcnFwb2xsIG5yX2NwdXM9MSByZXNl
dF9kZXZpY2VzIGNncm91cF9kaXNhYmxlPW1lbW9yeSBtY2U9b2ZmIG51bWE9b2ZmCiAgdWRldi5j
aGlsZHJlbi1tYXg9MiBwYW5pYz0xMCByb290ZmxhZ3M9bm9mYWlsIGFjcGlfbm9fbWVtaG90cGx1
ZwogIHRyYW5zcGFyZW50X2h1Z2VwYWdlPW5ldmVyIG5va2FzbHIgbm92bWNvcmVkZCBkaXNhYmxl
X2NwdV9hcGljaWQ9MAogIGVsZmNvcmVoZHI9OTAxNDkySycKRGVjIDE2IDE0OjU5OjIxIHZtMzY0
IHN5c3RlbWRbMV06IFN0YXJ0ZWQgQ3Jhc2ggcmVjb3Zlcnkga2VybmVsIGFybWluZy4KRGVjIDE2
IDE0OjU5OjIxIHZtMzY0IGtkdW1wY3RsWzE0MDczXToga2V4ZWM6IGxvYWRlZCBrZHVtcCBrZXJu
ZWwKRGVjIDE2IDE0OjU5OjIxIHZtMzY0IGtkdW1wY3RsWzE0MDczXTogU3RhcnRpbmcga2R1bXA6
IFtPS10KCmFuZCB0aGUgb3V0cHV0IGlzIGFsc28gYXZhaWxhYmxlIGluIC92YXIvbG9nL21lc3Nh
Z2VzLgoKVGhlcmUgbWlnaHQgYWxzbyBiZSBhbiBvcHBvcnR1bml0eSB0byBjb25zb2xpZGF0ZSBo
YW5kbGluZyBvZiB0aGUKa2VybmVsIGNvbW1hbmQgbGluZSwgYXMgbW9zdCBhcmNoIHRhcmdldHMg
aGF2ZSB0aGUgLS1jb21tYW5kLWxpbmUsCi0tYXBwZW5kLCBhbmQgLS1yZXVzZS1jbWRsaW5lIG9w
dGlvbnMsIHRob3VnaCBlYWNoIGFyY2ggaW5kZXBlbmRlbnRseQpjb2RlcyB0aGUgc3VwcG9ydCBm
b3IgdGhlc2Ugb3B0aW9ucy4KCk5vdGU6IFNpbXBseSBwcmludGluZyB0aGUgY21kbGluZSBpbiBz
Y3JpcHRzIHN1Y2ggYXMga2R1bXBjdGwgbWF5IG5vdApyZXN1bHQgaW4gdGhlIHNhbWUgb3JkZXJp
bmcsIGFuZCB3aWxsIG9taXQgYW55IGFkZGl0aW9uIG1hZGUgaW50ZXJuYWxseQpieSBrZXhlYywg
c3VjaCBhcyB0aGUgZWxmY29yZWhkci4KCkkgcHJvcG9zZSB0aGUgYWRkaXRpb24gb2YgYW4gb3B0
aW9uIHRvIGtleGVjLCAtLXByaW50LWtjbCAodG8gbWlycm9yCi0tcHJpbnQtY2tyKSwgdGhhdCB3
b3VsZCBjb250cm9sIHN1Y2ggcHJpbnRpbmcsIGFzIHdlbGwgYXMgdGhlIG5lZWRlZApwZXIgYXJj
aCBjb25kaXRpb25hbCBwcmludCBzdGF0ZW1lbnRzIHNpbWlsYXIgdG8gdGhlIGFib3ZlIHRvIHBy
aW50IHRoZQpmaW5hbCBjb25zdHJ1Y3RlZCBrZXJuZWwgY29tbWFuZCBsaW5lLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0
CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9rZXhlYwo=
