Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 531E612692C
	for <lists+kexec@lfdr.de>; Thu, 19 Dec 2019 19:34:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6xO6Uso/sx2p4cjwmrwriF2dbeCDquH+tBbMwARGlU=; b=FG+v7hJD5KcQv9
	ZJ3OfC5bmA6FIeh4YqSO93JK4p3lke9V7OYXpwzWJ1w9ubPuxa3Ou2djkfnqdHMxPH9wLS/agC9CI
	vYxlV3ieGyxSZ1HZD3xgMCc8ZPAkuIR4X+iB7mPQv+mwnzwyQxJZZw3vmttC3+kQrfW04SbiAOK8f
	qXwDSlCuN7FVOdwgckBBn9H2qI0QRklgJsyQi2yUxDOJo3DVENd2cVSqgN1SiHRuCAcUVwM7qNaiQ
	5rqgVLCagFW0VOyGk6eo4hbxra4rwuqCmJqMRmAKTODgqvUyco1l19Ucwrudbqnilgu4xM4SMScA+
	k6s74agd2B0kth8JjPXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii0d2-0006xC-Ux; Thu, 19 Dec 2019 18:34:28 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii0cx-0006vX-Uo; Thu, 19 Dec 2019 18:34:25 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBJIR9Ik046131;
 Thu, 19 Dec 2019 18:34:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=612PohDcN+LPYumX+nTCZyXRMRyst9GqwLbWBrVVPXA=;
 b=UiF/N5tIgThnT0MhlVg4bwDWoTSMT/gZY2EpLJpvUY8evcpXoFfyMP+e/JSc1o9G8GjW
 kSxT0RBwi7yZUwkmuhDs8nOwi46uV3F6LOVKseCXDQNjM0mRANH/9GXxHkxPrbmeNEIN
 JiD8IfZggBiK4t1a2Ft+5XKxlEsJmMo4fkMvtAHVbehaXuYkLT5slT2LTQ/f5qaEul0t
 augila4KZ7McfY1wDzV9tjbb+T97vWJ54gkSAzrkZCVtkBLgAmH7mqqCra4VAjRbRd7/
 pT+SpNRctKAMW9CaMS+2mgT3Fb4WXyCibYL9A7W9/lpYjvsnV7sOQryaUGNLDFJjqdLk Rg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2x01knmmrv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Dec 2019 18:34:01 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBJGEJtM035040;
 Thu, 19 Dec 2019 18:34:00 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2wyxqj3t1p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Dec 2019 18:34:00 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xBJIXuM9030907;
 Thu, 19 Dec 2019 18:33:56 GMT
Received: from dhcp-10-154-178-61.vpn.oracle.com (/10.154.178.61)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 19 Dec 2019 10:33:55 -0800
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: `
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <94c4540b-6467-002f-6cfc-bacc4ac45d24@huawei.com>
Date: Thu, 19 Dec 2019 12:33:51 -0600
Message-Id: <EA397BBF-56F6-4E8A-964D-ACB78F1DD9B4@oracle.com>
References: <20190830071200.56169-1-chenzhou10@huawei.com>
 <2a97b296-59e7-0a26-84fa-e2ddcd7987b6@huawei.com>
 <11E080AF-28F1-481A-BF16-9C062091D900@oracle.com>
 <94c4540b-6467-002f-6cfc-bacc4ac45d24@huawei.com>
To: Chen Zhou <chenzhou10@huawei.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9476
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912190135
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9476
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912190135
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_103424_080563_9562D0A9 
X-CRM114-Status: GOOD (  23.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
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
Cc: horms@verge.net.au, will@kernel.org, catalin.marinas@arm.com,
 bhsharma@redhat.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 mingo@redhat.com, james.morse@arm.com, guohanjun@huawei.com,
 tglx@linutronix.de, dyoung@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Cgo+IE9uIERlYyAxOCwgMjAxOSwgYXQgODo1NiBQTSwgQ2hlbiBaaG91IDxjaGVuemhvdTEwQGh1
YXdlaS5jb20+IHdyb3RlOgo+IAo+IEhpIEpvaG4sCj4gCj4gT24gMjAxOS8xMi8xOSAxOjE4LCBK
b2huIERvbm5lbGx5IHdyb3RlOgo+PiBISSAKPj4gCj4+IFNFRSBJTkxJTkUgT04gQSBRVUVTVElP
TiA6Cj4+IAo+Pj4gT24gRGVjIDE3LCAyMDE5LCBhdCA4OjA3IFBNLCBDaGVuIFpob3UgPGNoZW56
aG91MTBAaHVhd2VpLmNvbT4gd3JvdGU6Cj4+PiAKPj4+IEhpIGFsbCwKPj4+IAo+Pj4gRnJpZW5k
bHkgcGluZy4uLgo+Pj4gCj4+PiBPbiAyMDE5LzgvMzAgMTU6MTEsIENoZW4gWmhvdSB3cm90ZToK
Pj4+PiBJIGFtIGJ1c3kgd2l0aCBvdGhlciB0aGluZ3MsIHNvIGl0IHdhcyBhIGxvbmcgdGltZSBi
ZWZvcmUgdGhpcyB2ZXJzaW9uIHdhcwo+Pj4+IHJlbGVhc2VkLgo+Pj4+IAo+Pj4+IFRoaXMgcGF0
Y2ggc2VyaWVzIGVuYWJsZSByZXNlcnZpbmcgY3Jhc2hrZXJuZWwgYWJvdmUgNEcgaW4gYXJtNjQu
Cj4+Pj4gCj4+Pj4gVGhlcmUgYXJlIGZvbGxvd2luZyBpc3N1ZXMgaW4gYXJtNjQga2R1bXA6Cj4+
Pj4gMS4gV2UgdXNlIGNyYXNoa2VybmVsPVggdG8gcmVzZXJ2ZSBjcmFzaGtlcm5lbCBiZWxvdyA0
Rywgd2hpY2ggd2lsbCBmYWlsCj4+Pj4gd2hlbiB0aGVyZSBpcyBubyBlbm91Z2ggbG93IG1lbW9y
eS4KPj4+PiAyLiBDdXJyZW50bHksIGNyYXNoa2VybmVsPVlAWCBjYW4gYmUgdXNlZCB0byByZXNl
cnZlIGNyYXNoa2VybmVsIGFib3ZlIDRHLAo+Pj4+IGluIHRoaXMgY2FzZSwgaWYgc3dpb3RsYiBv
ciBETUEgYnVmZmVycyBhcmUgcmVxdWllcmQsIGNyYXNoIGR1bXAga2VybmVsCj4+Pj4gd2lsbCBi
b290IGZhaWx1cmUgYmVjYXVzZSB0aGVyZSBpcyBubyBsb3cgbWVtb3J5IGF2YWlsYWJsZSBmb3Ig
YWxsb2NhdGlvbi4KPj4gCj4+IAo+PiAgICAgIENhbiB5b3UgZWxhYm9yYXRlIHdoZW4gdGhlIGJv
b3QgZmFpbHVyZXMgbWF5IGZhaWwgZHVlIHRvIGxhY2tpbmcgIHN3aW90bGIgb3IgRE1BIGJ1ZmZl
cnMgPyBBcmUgdGhlc2UgcmVsYXRlZCB0byBjZXJ0YWluIGFkYXB0ZXJzIG9yIHNwZWNpZmljICBw
bGF0Zm9ybXMgID8gCj4+IAo+PiAgICAgSSBoYXZlIG5vdCBzZWVuIHRoaXMgd2hlbiB1c2luZyAg
IGNyYXNoa2VybmVsPTIwMjRNQDM1R0IgLiAKPj4gCj4gCj4gRm9yIGV4YW1wbGUsIGluIG15IGVu
dmlyb25tZW50ICJIdWF3ZWkgVGFpU2hhbiAyMjgwIiwKPiB3ZSBuZWVkIHRvIHVzZSBtcHQzc2Fz
IGRyaXZlciBpbiBjcmFzaCBkdW1wIGtlcm5lbCBmb3IgZHVtcGluZyB2bWNvcmUuCj4gCj4gbXB0
M3NhcyBkcml2ZXIgbmVlZHMgdG8gY2FsbCBkbWFfcG9vbF9hbGxvYyB0byBhbGxvY2F0ZSBzb21l
IHBhZ2VzLAo+IGlmIHRoZXJlIGlzIG5vIERNQSBidWZmZXIsIHBhZ2UgYWxsb2NhdGlvbiB3aWxs
IGZhaWwsIHdoaWNoIGxlYWRzIHRvIGNyYXNoIGR1bXAga2VybmVsIGJvb3QgZmFpbHVyZSwKPiBs
aWtlIHRoaXM6Cj4gCj4gWzIwMTkvMTIvMTkgOToxMjo0MV0gWyAgIDEyLjQwMzUwMV0gbXB0M3Nh
c19jbTA6IGRpYWcgcmVzZXQ6IFNVQ0NFU1MKPiBbMjAxOS8xMi8xOSA5OjEyOjQxXSBbICAgMTIu
NDU2MDc2XSBtcHQzc2FzX2NtMDogcmVwbHlfcG9zdF9mcmVlIHBvb2w6IGRtYV9wb29sX2FsbG9j
IGZhaWxlZAo+IFsyMDE5LzEyLzE5IDk6MTI6NDFdIFsgICAxMi40NjI1MTVdIHBjaSAwMDA0OjQ4
OjAwLjA6IGNhbid0IGRlcml2ZSByb3V0aW5nIGZvciBQQ0kgSU5UIEEKPiBbMjAxOS8xMi8xOSA5
OjEyOjQxXSBbICAgMTIuNDY4NzYxXSBtcHQzc2FzIDAwMDQ6NDk6MDAuMDogUENJIElOVCBBOiBu
byBHU0kKPiBbMjAxOS8xMi8xOSA5OjEyOjQxXSBbICAgMTIuNDc2MzQ4XSBtcHQzc2FzX2NtMDog
ZmFpbHVyZSBhdCBkcml2ZXJzL3Njc2kvbXB0M3Nhcy9tcHQzc2FzX3Njc2loLmM6MTA2MjYvX3Nj
c2loX3Byb2JlKCkhCj4gWzIwMTkvMTIvMTkgOToxNDozOF0gWyBUSU1FIF0gVGltZWQgb3V0IHdh
aXRpbmcgZm9yIGRldmljZSBkZXYtZGnigKZiM1x4MmQ4OTBhXHgyZDJlYWQ3ZGYyNmY0OC5kZXZp
Y2UuCj4gWzIwMTkvMTIvMTkgOToxNDozOF0gW0RFUEVORF0gRGVwZW5kZW5jeSBmYWlsZWQgZm9y
IEluaXRyZCBSb290IERldmljZS4KPiBbMjAxOS8xMi8xOSA5OjE0OjM4XSBbREVQRU5EXSBEZXBl
bmRlbmN5IGZhaWxlZCBmb3IgL3N5c3Jvb3QuCj4gWzIwMTkvMTIvMTkgOToxNDozOF0gW0RFUEVO
RF0gRGVwZW5kZW5jeSBmYWlsZWQgZm9yIEluaXRyZCBSb290IEZpbGUgU3lzdGVtLgo+IFsyMDE5
LzEyLzE5IDk6MTQ6MzhdIFtERVBFTkRdIERlcGVuZGVuY3kgZmFpbGVkIGZvciBSZWxvYWQgQ29u
ZmlndXJhdGlvbiBmcm9tIHRoZSBSZWFsIFJvb3QuCj4gWzIwMTkvMTIvMTkgOToxNDozOF0gW0RF
UEVORF0gRGVwZW5kZW5jeSBmYWlsZWQgZm9yIEZpbGUgU3lzdGVtIEPigKY0MGJhZS05ZWI4LTQ2
YjMtODkwYS0yZWFkN2RmMjZmNDguCgoKIFRoYW5rIHlvdSBmb3Igc2hhcmluZyAuICBXZSBhcmUg
bm90IHNlZWluZyB0aGlzIGlzc3VlIG9uIGEgNS40LjAucmM4IDsgICAgTGlrZSBJIHNhaWQgaW4g
YSBwcmV2aW91cyBlbWFpbCB3ZSBjYW4gIHRha2UgY3Jhc2ggZHVtcHMgdXNpbmcgY3Jhc2hrZXJu
ZWw9NzY4TSBmb3IgYSAg4oCcIHN0YW5kYXJkIOKAnCBzbWFsbCBWTWNvcmUgdG8gbG9jYWwgc3Rv
cmFnZSA6CgowMDA0OjAxOjAwLjAgUkFJRCBidXMgY29udHJvbGxlcjogQnJvYWRjb20gLyBMU0kg
TWVnYVJBSUQgU0FTLTMgMzMxNiBbSW50cnVkZXJdIChyZXYgMDEpCglTdWJzeXN0ZW06IEJyb2Fk
Y29tIC8gTFNJIE1lZ2FSQUlEIFNBUyA5MzYxLTE2aQoJS2VybmVsIGRyaXZlciBpbiB1c2U6IG1l
Z2FyYWlkX3NhcyAKCgpXaGF0IHZlcnNpb24gb2YgdGhlIGtlcm5lbCBhcmUgeW91IHVzaW5nID8K
Cgo+IAo+IFRoYW5rcywKPiBDaGVuIFpob3UKPiAKPj4gCj4+Pj4gCj4+Pj4gVG8gc29sdmUgdGhl
c2UgaXNzdWVzLCBpbnRyb2R1Y2UgY3Jhc2hrZXJuZWw9WCxsb3cgdG8gcmVzZXJ2ZSBzcGVjaWZp
ZWQKPj4+PiBzaXplIGxvdyBtZW1vcnkuCj4+Pj4gQ3Jhc2hrZXJuZWw9WCB0cmllcyB0byByZXNl
cnZlIG1lbW9yeSBmb3IgdGhlIGNyYXNoIGR1bXAga2VybmVsIHVuZGVyCj4+Pj4gNEcuIElmIGNy
YXNoa2VybmVsPVksbG93IGlzIHNwZWNpZmllZCBzaW11bHRhbmVvdXNseSwgcmVzZXJ2ZSBzcGNp
ZmllZAo+Pj4+IHNpemUgbG93IG1lbW9yeSBmb3IgY3Jhc2gga2R1bXAga2VybmVsIGRldmljZXMg
Zmlyc3RseSBhbmQgdGhlbiByZXNlcnZlCj4+Pj4gbWVtb3J5IGFib3ZlIDRHLgo+Pj4+IAo+Pj4+
IFdoZW4gY3Jhc2hrZXJuZWwgaXMgcmVzZXJ2ZWQgYWJvdmUgNEcgaW4gbWVtb3J5LCB0aGF0IGlz
LCBjcmFzaGtlcm5lbD1YLGxvdwo+Pj4+IGlzIHNwZWNpZmllZCBzaW11bHRhbmVvdXNseSwga2Vy
bmVsIHNob3VsZCByZXNlcnZlIHNwZWNpZmllZCBzaXplIGxvdyBtZW1vcnkKPj4+PiBmb3IgY3Jh
c2ggZHVtcCBrZXJuZWwgZGV2aWNlcy4gU28gdGhlcmUgbWF5IGJlIHR3byBjcmFzaCBrZXJuZWwg
cmVnaW9ucywgb25lCj4+Pj4gaXMgYmVsb3cgNEcsIHRoZSBvdGhlciBpcyBhYm92ZSA0Ry4KPj4+
PiBJbiBvcmRlciB0byBkaXN0aW5jdCBmcm9tIHRoZSBoaWdoIHJlZ2lvbiBhbmQgbWFrZSBubyBl
ZmZlY3QgdG8gdGhlIHVzZSBvZgo+Pj4+IGtleGVjLXRvb2xzLCByZW5hbWUgdGhlIGxvdyByZWdp
b24gYXMgIkNyYXNoIGtlcm5lbCAobG93KSIsIGFuZCBhZGQgRFQgcHJvcGVydHkKPj4+PiAibGlu
dXgsbG93LW1lbW9yeS1yYW5nZSIgdG8gY3Jhc2ggZHVtcCBrZXJuZWwncyBkdGIgdG8gcGFzcyB0
aGUgbG93IHJlZ2lvbi4KPj4+PiAKPj4+PiBCZXNpZGVzLCB3ZSBuZWVkIHRvIG1vZGlmeSBrZXhl
Yy10b29sczoKPj4+PiBhcm02NDoga2R1bXA6IGFkZCBhbm90aGVyIERUIHByb3BlcnR5IHRvIGNy
YXNoIGR1bXAga2VybmVsJ3MgZHRiKHNlZSBbMV0pCj4+Pj4gCj4+Pj4gVGhlIHByZXZpb3VzIGNo
YW5nZXMgYW5kIGRpc2N1c3Npb25zIGNhbiBiZSByZXRyaWV2ZWQgZnJvbToKPj4+PiAKPj4+PiBD
aGFuZ2VzIHNpbmNlIFt2NV0KPj4+PiAtIE1vdmUgcmVzZXJ2ZV9jcmFzaGtlcm5lbF9sb3coKSBp
bnRvIGtlcm5lbC9jcmFzaF9jb3JlLmMuCj4+Pj4gLSBEZWxldGUgY3Jhc2hrZXJuZWw9WCxoaWdo
Lgo+Pj4+IC0gTW9kaWZ5IGNyYXNoa2VybmVsPVgsbG93Lgo+Pj4+IElmIGNyYXNoa2VybmVsPVgs
bG93IGlzIHNwZWNpZmllZCBzaW11bHRhbmVvdXNseSwgcmVzZXJ2ZSBzcGNpZmllZCBzaXplIGxv
dwo+Pj4+IG1lbW9yeSBmb3IgY3Jhc2gga2R1bXAga2VybmVsIGRldmljZXMgZmlyc3RseSBhbmQg
dGhlbiByZXNlcnZlIG1lbW9yeSBhYm92ZSA0Ry4KPj4+PiBJbiBhZGRpdGlvbiwgcmVuYW1lIGNy
YXNoa19sb3dfcmVzIGFzICJDcmFzaCBrZXJuZWwgKGxvdykiIGZvciBhcm02NCwgYW5kIHRoZW4K
Pj4+PiBwYXNzIHRvIGNyYXNoIGR1bXAga2VybmVsIGJ5IERUIHByb3BlcnR5ICJsaW51eCxsb3ct
bWVtb3J5LXJhbmdlIi4KPj4+PiAtIFVwZGF0ZSBEb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tk
dW1wL2tkdW1wLnJzdC4KPj4+PiAKPj4+PiBDaGFuZ2VzIHNpbmNlIFt2NF0KPj4+PiAtIFJlaW1w
bGVtZW50IG1lbWJsb2NrX2NhcF9tZW1vcnlfcmFuZ2VzIGZvciBtdWx0aXBsZSByYW5nZXMgYnkg
TWlrZS4KPj4+PiAKPj4+PiBDaGFuZ2VzIHNpbmNlIFt2M10KPj4+PiAtIEFkZCBtZW1ibG9ja19j
YXBfbWVtb3J5X3JhbmdlcyBiYWNrIGZvciBtdWx0aXBsZSByYW5nZXMuCj4+Pj4gLSBGaXggc29t
ZSBjb21waWxpbmcgd2FybmluZ3MuCj4+Pj4gCj4+Pj4gQ2hhbmdlcyBzaW5jZSBbdjJdCj4+Pj4g
LSBTcGxpdCBwYXRjaCAiYXJtNjQ6IGtkdW1wOiBzdXBwb3J0IHJlc2VydmluZyBjcmFzaGtlcm5l
bCBhYm92ZSA0RyIgYXMKPj4+PiB0d28uIFB1dCAibW92ZSByZXNlcnZlX2NyYXNoa2VybmVsX2xv
dygpIGludG8ga2V4ZWNfY29yZS5jIiBpbiBhIHNlcGFyYXRlCj4+Pj4gcGF0Y2guCj4+Pj4gCj4+
Pj4gQ2hhbmdlcyBzaW5jZSBbdjFdOgo+Pj4+IC0gTW92ZSBjb21tb24gcmVzZXJ2ZV9jcmFzaGtl
cm5lbF9sb3coKSBjb2RlIGludG8ga2VybmVsL2tleGVjX2NvcmUuYy4KPj4+PiAtIFJlbW92ZSBt
ZW1ibG9ja19jYXBfbWVtb3J5X3JhbmdlcygpIGkgYWRkZWQgaW4gdjEgYW5kIGltcGxlbWVudCB0
aGF0Cj4+Pj4gaW4gZmR0X2VuZm9yY2VfbWVtb3J5X3JlZ2lvbigpLgo+Pj4+IFRoZXJlIGFyZSBh
dCBtb3N0IHR3byBjcmFzaCBrZXJuZWwgcmVnaW9ucywgZm9yIHR3byBjcmFzaCBrZXJuZWwgcmVn
aW9ucwo+Pj4+IGNhc2UsIHdlIGNhcCB0aGUgbWVtb3J5IHJhbmdlIFttaW4ocmVnc1sqXS5zdGFy
dCksIG1heChyZWdzWypdLmVuZCldCj4+Pj4gYW5kIHRoZW4gcmVtb3ZlIHRoZSBtZW1vcnkgcmFu
Z2UgaW4gdGhlIG1pZGRsZS4KPj4+PiAKPj4+PiBbMV06IGh0dHBzOi8vdXJsZGVmZW5zZS5wcm9v
ZnBvaW50LmNvbS92Mi91cmw/dT1odHRwLTNBX19saXN0cy5pbmZyYWRlYWQub3JnX3BpcGVybWFp
bF9rZXhlY18yMDE5LTJEQXVndXN0XzAyMzU2OS5odG1sJmQ9RHdJQ0FnJmM9Um9QMVl1bUNYQ2dh
V0h2bFpZUjhQWmg4QnY3cUlyTVVCNjVlYXBJX0puRSZyPXQyZlBnOUQ4N0Y3RDhqbTBfM0NHOXlv
aUlLZFJnNHFjX3RoQnc0YnpNaGMmbT1aQUM2VVliVC0zcUxSM0R2ZXZkMDltNm5lV1d6R1dTcGh1
dlhYbFhvdzY4JnM9OXRuOWtVQmFiaXVZaFZ0WGF1QU5TREdhSVNuQ25ITFljQVVRZ3NQQkZ4cyZl
PSAKPj4+PiBbdjFdOiBodHRwczovL3VybGRlZmVuc2UucHJvb2Zwb2ludC5jb20vdjIvdXJsP3U9
aHR0cHMtM0FfX2xrbWwub3JnX2xrbWxfMjAxOV80XzJfMTE3NCZkPUR3SUNBZyZjPVJvUDFZdW1D
WENnYVdIdmxaWVI4UFpoOEJ2N3FJck1VQjY1ZWFwSV9KbkUmcj10MmZQZzlEODdGN0Q4am0wXzND
Rzl5b2lJS2RSZzRxY190aEJ3NGJ6TWhjJm09WkFDNlVZYlQtM3FMUjNEdmV2ZDA5bTZuZVdXekdX
U3BodXZYWGxYb3c2OCZzPUYtbE03SUkyY3VNRl9zSzNiNi1RaFNiV00zWC1wSV9XWkVzMHNaaXRT
N0EmZT0gCj4+Pj4gW3YyXTogaHR0cHM6Ly91cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3Vy
bD91PWh0dHBzLTNBX19sa21sLm9yZ19sa21sXzIwMTlfNF85Xzg2JmQ9RHdJQ0FnJmM9Um9QMVl1
bUNYQ2dhV0h2bFpZUjhQWmg4QnY3cUlyTVVCNjVlYXBJX0puRSZyPXQyZlBnOUQ4N0Y3RDhqbTBf
M0NHOXlvaUlLZFJnNHFjX3RoQnc0YnpNaGMmbT1aQUM2VVliVC0zcUxSM0R2ZXZkMDltNm5lV1d6
R1dTcGh1dlhYbFhvdzY4JnM9NVktUzZzcU1Ua2xIa09Rc050alRYM0M3cFYwNUJqS0xHaEpWZk1I
RXZEcyZlPSAKPj4+PiBbdjNdOiBodHRwczovL3VybGRlZmVuc2UucHJvb2Zwb2ludC5jb20vdjIv
dXJsP3U9aHR0cHMtM0FfX2xrbWwub3JnX2xrbWxfMjAxOV80XzlfMzA2JmQ9RHdJQ0FnJmM9Um9Q
MVl1bUNYQ2dhV0h2bFpZUjhQWmg4QnY3cUlyTVVCNjVlYXBJX0puRSZyPXQyZlBnOUQ4N0Y3RDhq
bTBfM0NHOXlvaUlLZFJnNHFjX3RoQnc0YnpNaGMmbT1aQUM2VVliVC0zcUxSM0R2ZXZkMDltNm5l
V1d6R1dTcGh1dlhYbFhvdzY4JnM9Y1duNHpTUlF1cGFaM2pqejRlRHZELXBOa29MeUxfaHNab1J4
NHlKb0QwYyZlPSAKPj4+PiBbdjRdOiBodHRwczovL3VybGRlZmVuc2UucHJvb2Zwb2ludC5jb20v
djIvdXJsP3U9aHR0cHMtM0FfX2xrbWwub3JnX2xrbWxfMjAxOV80XzE1XzI3MyZkPUR3SUNBZyZj
PVJvUDFZdW1DWENnYVdIdmxaWVI4UFpoOEJ2N3FJck1VQjY1ZWFwSV9KbkUmcj10MmZQZzlEODdG
N0Q4am0wXzNDRzl5b2lJS2RSZzRxY190aEJ3NGJ6TWhjJm09WkFDNlVZYlQtM3FMUjNEdmV2ZDA5
bTZuZVdXekdXU3BodXZYWGxYb3c2OCZzPU5zbGs0UkpLSXlJdVQwSW9Rb29sWE5qdXBFRFhwbFBo
UVF3blRTb1hOV0UmZT0gCj4+Pj4gW3Y1XTogaHR0cHM6Ly91cmxkZWZlbnNlLnByb29mcG9pbnQu
Y29tL3YyL3VybD91PWh0dHBzLTNBX19sa21sLm9yZ19sa21sXzIwMTlfNV82XzEzNjAmZD1Ed0lD
QWcmYz1Sb1AxWXVtQ1hDZ2FXSHZsWllSOFBaaDhCdjdxSXJNVUI2NWVhcElfSm5FJnI9dDJmUGc5
RDg3RjdEOGptMF8zQ0c5eW9pSUtkUmc0cWNfdGhCdzRiek1oYyZtPVpBQzZVWWJULTNxTFIzRHZl
dmQwOW02bmVXV3pHV1NwaHV2WFhsWG93Njgmcz1ISlZBTTZzQ3hWMkRuTmc1ZDRwdzhXUHF0a21R
bkt2enRFbWtTSWd0UTVNJmU9IAo+Pj4+IAo+Pj4+IENoZW4gWmhvdSAoNCk6Cj4+Pj4geDg2OiBr
ZHVtcDogbW92ZSByZXNlcnZlX2NyYXNoa2VybmVsX2xvdygpIGludG8gY3Jhc2hfY29yZS5jCj4+
Pj4gYXJtNjQ6IGtkdW1wOiByZXNlcnZlIGNyYXNoa2VuZWwgYWJvdmUgNEcgZm9yIGNyYXNoIGR1
bXAga2VybmVsCj4+Pj4gYXJtNjQ6IGtkdW1wOiBhZGQgbWVtb3J5IGZvciBkZXZpY2VzIGJ5IERU
IHByb3BlcnR5LCBsb3ctbWVtb3J5LXJhbmdlCj4+Pj4ga2R1bXA6IHVwZGF0ZSBEb2N1bWVudGF0
aW9uIGFib3V0IGNyYXNoa2VybmVsIG9uIGFybTY0Cj4+Pj4gCj4+Pj4gRG9jdW1lbnRhdGlvbi9h
ZG1pbi1ndWlkZS9rZHVtcC9rZHVtcC5yc3QgICAgICAgfCAxMyArKysrLQo+Pj4+IERvY3VtZW50
YXRpb24vYWRtaW4tZ3VpZGUva2VybmVsLXBhcmFtZXRlcnMudHh0IHwgMTIgKysrKy0KPj4+PiBh
cmNoL2FybTY0L2luY2x1ZGUvYXNtL2tleGVjLmggICAgICAgICAgICAgICAgICB8ICAzICsrCj4+
Pj4gYXJjaC9hcm02NC9rZXJuZWwvc2V0dXAuYyAgICAgICAgICAgICAgICAgICAgICAgfCAgOCAr
Ky0KPj4+PiBhcmNoL2FybTY0L21tL2luaXQuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
IDYxICsrKysrKysrKysrKysrKysrKysrKy0tCj4+Pj4gYXJjaC94ODYvaW5jbHVkZS9hc20va2V4
ZWMuaCAgICAgICAgICAgICAgICAgICAgfCAgMyArKwo+Pj4+IGFyY2gveDg2L2tlcm5lbC9zZXR1
cC5jICAgICAgICAgICAgICAgICAgICAgICAgIHwgNjUgKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQo+Pj4+IGluY2x1ZGUvbGludXgvY3Jhc2hfY29yZS5oICAgICAgICAgICAgICAgICAgICAgIHwg
IDQgKysKPj4+PiBpbmNsdWRlL2xpbnV4L2tleGVjLmggICAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAxIC0KPj4+PiBrZXJuZWwvY3Jhc2hfY29yZS5jICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8IDY1ICsrKysrKysrKysrKysrKysrKysrKysrKysKPj4+PiAxMCBmaWxlcyBjaGFuZ2Vk
LCAxNjggaW5zZXJ0aW9ucygrKSwgNjcgZGVsZXRpb25zKC0pCj4+Pj4gCj4+PiAKPj4+IAo+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IGtleGVj
IG1haWxpbmcgbGlzdAo+Pj4ga2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4gaHR0cHM6Ly91
cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHAtM0FfX2xpc3RzLmluZnJhZGVh
ZC5vcmdfbWFpbG1hbl9saXN0aW5mb19rZXhlYyZkPUR3SUNBZyZjPVJvUDFZdW1DWENnYVdIdmxa
WVI4UFpoOEJ2N3FJck1VQjY1ZWFwSV9KbkUmcj10MmZQZzlEODdGN0Q4am0wXzNDRzl5b2lJS2RS
ZzRxY190aEJ3NGJ6TWhjJm09WkFDNlVZYlQtM3FMUjNEdmV2ZDA5bTZuZVdXekdXU3BodXZYWGxY
b3c2OCZzPVhNY0Z4NjFCX1FQZy1GVWZHXy10ODhES0NuR200Z3JxdTZ6Umd1aUhZclUmZT0gCj4+
IAo+PiAKPj4gLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
