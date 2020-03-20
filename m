Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B568418CD4B
	for <lists+kexec@lfdr.de>; Fri, 20 Mar 2020 12:56:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mJrxVq6tulOck8aP+P+F8mEAfCDO4hAvGskt7sF1MyI=; b=HdXao6o3LiGeW8SV0VunkJGEx
	u8fvu4LvRXnNa5W/FasJ/9enuY2+FJgS1OoRWblsJmigjQMSv40QhOtWkVwMcXX/u/zByUO0iekVq
	OCc91xzImJIrh2sm6JRVp4nqS6i5++SbxhP0fO9U0rlJvaCGEUZaGPkmfD/ASigZTE2C16x2p04oM
	yi/IstwOYGgLQ09yt4js8fZkO+WAgp3ELiIr+/K9KP0pzV3pJmAxf2+thrKaN8OFt6FNV/ID9sDtd
	yHvHgQ29fM6XSn8AbzEoSKUsASQ87zrmxPLVxJv87qKgT036xi7yM4SRBgWBTeYK3Squ2X+VId2mI
	3BmSlDhQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFGGQ-0002kz-GC; Fri, 20 Mar 2020 11:56:34 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFGGK-0002kY-1Z
 for kexec@lists.infradead.org; Fri, 20 Mar 2020 11:56:29 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02KBr8KJ048009
 for <kexec@lists.infradead.org>; Fri, 20 Mar 2020 11:56:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=ZLIPtLr7+uy11sPbnfUbp3De7PRo5INejwiltSfxuzQ=;
 b=dWF3bgtXcw8skPfr2VzCo27NuiK38I3jexJzkXYiwIeWHbGfhBud3dAc/lJE4xSlMEVo
 f0gz3glw+TpZLKSG2dFLmF09+1Kr9xzg/NMpF+kZVmakJqXfkijEFCqZ29EJmnDMpVc/
 ZwP9ga52ZufMW234bZovSJgT5MFVQ2CRKXRxX9v4Rx4+ZwnDhr3dPrAAvnj/3X5N2dFu
 D9QorqN2t79RBKvvzNPxWNEodkOwkUYAwinPiG4PjsCMfJjlRTeQjxEnULqNWp7s3eNE
 oMfYi17WJ49Q5r5H4WvFhPaXgfLPtI7tzyAYs23j2CQSzRT/0ytOKe9HPhe0Uz4N7b31 fw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2yrq7md4wr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Fri, 20 Mar 2020 11:56:22 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02KBqdck167578
 for <kexec@lists.infradead.org>; Fri, 20 Mar 2020 11:56:21 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2ys906n5jr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Fri, 20 Mar 2020 11:56:21 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02KBuKP1008297
 for <kexec@lists.infradead.org>; Fri, 20 Mar 2020 11:56:20 GMT
Received: from [192.168.1.140] (/47.220.71.223)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 20 Mar 2020 04:56:20 -0700
Subject: Re: [PATCH 2/2] Documentation/vmcoreinfo: Add documentation for
 'KERNELPACMASK'
To: kexec@lists.infradead.org
References: <1584603551-23845-1-git-send-email-amit.kachhap@arm.com>
 <1584603551-23845-2-git-send-email-amit.kachhap@arm.com>
 <5235269c-e3c7-efff-6083-a05a39699735@Oracle.com>
 <3d8eb414-c70c-f97b-b2e0-376ebd99403c@arm.com>
From: John Donnelly <John.P.Donnelly@Oracle.com>
Message-ID: <b4cbfe05-0997-891a-cf8a-d2c92c815e7d@Oracle.com>
Date: Fri, 20 Mar 2020 06:56:19 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <3d8eb414-c70c-f97b-b2e0-376ebd99403c@arm.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9565
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxlogscore=999 mlxscore=0
 adultscore=0 bulkscore=0 malwarescore=0 spamscore=0 suspectscore=1
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003200053
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9565
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 suspectscore=1
 adultscore=0 bulkscore=0 mlxlogscore=999 priorityscore=1501 clxscore=1015
 malwarescore=0 mlxscore=0 phishscore=0 impostorscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003200053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_045628_178833_5056DC78 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gMy8yMC8yMCA1OjI2IEFNLCBBbWl0IEthY2hoYXAgd3JvdGU6Cj4gSGksCj4gCj4gT24gMy8x
OS8yMCA3OjIxIFBNLCBKb2huIERvbm5lbGx5IHdyb3RlOgo+PiBPbiAzLzE5LzIwIDI6MzkgQU0s
IEFtaXQgRGFuaWVsIEthY2hoYXAgd3JvdGU6Cj4+PiBBZGQgZG9jdW1lbnRhdGlvbiBmb3IgS0VS
TkVMUEFDTUFTSyB2YXJpYWJsZSBiZWluZyBhZGRlZCB0byB2bWNvcmVpbmZvLgo+Pj4KPj4+IEl0
IGluZGljYXRlcyB0aGUgUEFDIGJpdHMgbWFzayBpbmZvcm1hdGlvbiBvZiBzaWduZWQga2VybmVs
IHBvaW50ZXJzIGlmCj4+PiBBUk12OC4zLUEgUG9pbnRlciBBdXRoZW50aWNhdGlvbiBmZWF0dXJl
IGlzIHByZXNlbnQuCj4+Pgo+Pj4gQ2M6IENhdGFsaW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFz
QGFybS5jb20+Cj4+PiBDYzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KPj4+IENjOiBN
YXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPgo+Pj4gQ2M6IEphbWVzIE1vcnNlIDxq
YW1lcy5tb3JzZUBhcm0uY29tPgo+Pj4gQ2M6IERhdmUgQW5kZXJzb24gPGFuZGVyc29uQHJlZGhh
dC5jb20+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBBbWl0IERhbmllbCBLYWNoaGFwIDxhbWl0LmthY2ho
YXBAYXJtLmNvbT4KPj4+IC0tLQo+Pj4gwqAgRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9rZHVt
cC92bWNvcmVpbmZvLnJzdCB8IDYgKysrKysrCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUv
a2R1bXAvdm1jb3JlaW5mby5yc3QgCj4+PiBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUva2R1
bXAvdm1jb3JlaW5mby5yc3QKPj4+IGluZGV4IDAwN2E2YjguLjVjYzNlZTYgMTAwNjQ0Cj4+PiAt
LS0gYS9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tkdW1wL3ZtY29yZWluZm8ucnN0Cj4+PiAr
KysgYi9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tkdW1wL3ZtY29yZWluZm8ucnN0Cj4+PiBA
QCAtMzkzLDYgKzM5MywxMiBAQCBLRVJORUxPRkZTRVQKPj4+IMKgIFRoZSBrZXJuZWwgcmFuZG9t
aXphdGlvbiBvZmZzZXQuIFVzZWQgdG8gY29tcHV0ZSB0aGUgcGFnZSBvZmZzZXQuIElmCj4+PiDC
oCBLQVNMUiBpcyBkaXNhYmxlZCwgdGhpcyB2YWx1ZSBpcyB6ZXJvLgo+Pj4gK0tFUk5FTFBBQ01B
U0sKPj4+ICstLS0tLS0tLS0tLS0tCj4+PiArCj4+PiArSW5kaWNhdGVzIHRoZSBQQUMgYml0cyBt
YXNrIGluZm9ybWF0aW9uIGlmIFBvaW50ZXIgQXV0aGVudGljYXRpb24gaXMKPj4+ICtlbmFibGVk
IGFuZCBhZGRyZXNzIGF1dGhlbnRpY2F0aW9uIGZlYXR1cmUgaXMgcHJlc2VudC4KPj4+ICsKPj4+
IMKgIGFybQo+Pj4gwqAgPT09Cj4+Pgo+Pj4KPj4KPj4KPj4gSGksCj4+Cj4+IERvZXMgdGhpcyBy
ZXF1aXJlIGNoYW5nZXMgdG8gdGhlwqAgbWFrZWR1bXBmaWxlIG9yIGNyYXNoIHV0aWxpdGllcyA/
Cj4gCj4gSSBkaWQgdGhlIGNvcnJlc3BvbmRpbmcgY2hhbmdlIGluIGNyYXNoIHRvb2wuIFRoZSBs
aW5rIGlzIG1lbnRpb25lZCBpbiAKPiBmaXJzdCBwYXRjaCBvZiB0aGUgc2VyaWVzLgo+IAo+IFRo
YW5rcywKPiBBbWl0IERhbmllbAoKCkhpLAoKV2hhdCBhcmUgdGhlIGNvbnNlcXVlbmNlcyBpZiB0
aGlzIGlzIHByZXNlbnQgaW4gdGhlIGtlcm5lbCB5ZXQgdGhlIGNyYXNoIAp1dGlsaXR5IGlzIG5v
dCB1cGRhdGVkID8gRG9lcyBjcmFzaCBzdGlsbCB3b3JrID8KCgoKVGhhbmsgWW91LApKb2huCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWls
aW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
