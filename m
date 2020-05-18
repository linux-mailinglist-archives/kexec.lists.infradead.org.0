Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC9F1D78BE
	for <lists+kexec@lfdr.de>; Mon, 18 May 2020 14:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2pc50jRhCKXiOGkeNpswVmYkTAeSR1AYtHicQwvD5Ic=; b=OmZQ6WSNtNdXNJ
	BB7PRjw+QCWJlZCxmgRHdeRQ5BFXIU3vfpsQmnuHcyXfhhi2i1RBF7ljcbJ4vUHE/uyKBpgzC/89e
	Gh2NMFlqhRh+FKwU+aA2878CM7ZCOUG7EwhAmdTfJe9o823hJAimtzNkG7aCGvoDnB4hT7uyeiXMu
	YxGPqeY3f/saSjMbMQc/dodpwY71VrecDxqqTf+PIjlqv9W1CXmKIKj0rWAFIQ6fDzYgtRJQ5ENoJ
	ilX+C+NCx0xN/vD+5/UOpZLvw448Y+/FFhaOr1UIV4hT2myBUm7yQO2uKMhtBcYdCQzabNrbzkv4p
	TojOSexQHn6nnBYsoYxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaf2a-0002x0-Fw; Mon, 18 May 2020 12:38:44 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaf2X-0002wX-3f
 for kexec@lists.infradead.org; Mon, 18 May 2020 12:38:42 +0000
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04ICX7lY088693; Mon, 18 May 2020 08:37:52 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 31292e4yye-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 18 May 2020 08:37:51 -0400
Received: from m0098393.ppops.net (m0098393.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 04ICYhbj094964;
 Mon, 18 May 2020 08:37:51 -0400
Received: from ppma03fra.de.ibm.com (6b.4a.5195.ip4.static.sl-reverse.com
 [149.81.74.107])
 by mx0a-001b2d01.pphosted.com with ESMTP id 31292e4yx8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 18 May 2020 08:37:50 -0400
Received: from pps.filterd (ppma03fra.de.ibm.com [127.0.0.1])
 by ppma03fra.de.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 04ICa50C017752;
 Mon, 18 May 2020 12:37:48 GMT
Received: from b06cxnps3074.portsmouth.uk.ibm.com
 (d06relay09.portsmouth.uk.ibm.com [9.149.109.194])
 by ppma03fra.de.ibm.com with ESMTP id 3127t5hnhx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 18 May 2020 12:37:48 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 04ICbjrD24838244
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 18 May 2020 12:37:45 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6BD284C059;
 Mon, 18 May 2020 12:37:45 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9F7144C04E;
 Mon, 18 May 2020 12:37:42 +0000 (GMT)
Received: from localhost.localdomain (unknown [9.85.145.145])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Mon, 18 May 2020 12:37:42 +0000 (GMT)
Message-ID: <1589805462.5111.107.camel@linux.ibm.com>
Subject: Re: [PATCH 0/3] fs: reduce export usage of kerne_read*() calls
From: Mimi Zohar <zohar@linux.ibm.com>
To: Christoph Hellwig <hch@infradead.org>, Luis Chamberlain <mcgrof@kernel.org>
Date: Mon, 18 May 2020 08:37:42 -0400
In-Reply-To: <20200518062255.GB15641@infradead.org>
References: <20200513152108.25669-1-mcgrof@kernel.org>
 <20200513181736.GA24342@infradead.org>
 <20200515212933.GD11244@42.do-not-panic.com>
 <20200518062255.GB15641@infradead.org>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-18_05:2020-05-15,
 2020-05-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1011
 lowpriorityscore=0 adultscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 mlxlogscore=999 mlxscore=0 suspectscore=0 spamscore=0
 malwarescore=0 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005180114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_053841_157036_E2564E51 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: rafael@kernel.org, dhowells@redhat.com, paul@paul-moore.com,
 nayna@linux.ibm.com, jmorris@namei.org, geert@linux-m68k.org,
 dan.carpenter@oracle.com, keescook@chromium.org, scott.branden@broadcom.com,
 selinux@vger.kernel.org, viro@zeniv.linux.org.uk, skhan@linuxfoundation.org,
 eparis@parisplace.org, tglx@linutronix.de, gregkh@linuxfoundation.org,
 stephen.smalley.work@gmail.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 ebiederm@xmission.com, jeyu@kernel.org, linux-fsdevel@vger.kernel.org,
 linux-integrity@vger.kernel.org, bauerman@linux.ibm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgQ2hyaXN0b3BoLAoKT24gU3VuLCAyMDIwLTA1LTE3IGF0IDIzOjIyIC0wNzAwLCBDaHJpc3Rv
cGggSGVsbHdpZyB3cm90ZToKPiBPbiBGcmksIE1heSAxNSwgMjAyMCBhdCAwOToyOTozM1BNICsw
MDAwLCBMdWlzIENoYW1iZXJsYWluIHdyb3RlOgo+ID4gT24gV2VkLCBNYXkgMTMsIDIwMjAgYXQg
MTE6MTc6MzZBTSAtMDcwMCwgQ2hyaXN0b3BoIEhlbGx3aWcgd3JvdGU6Cj4gPiA+IENhbiB5b3Ug
YWxzbyBtb3ZlIGtlcm5lbF9yZWFkXyogb3V0IG9mIGZzLmg/ICBUaGF0IGhlYWRlciBnZXRzIHB1
bGxlZAo+ID4gPiBpbiBqdXN0IGFib3V0IGV2ZXJ5d2hlcmUgYW5kIGRvZXNuJ3QgcmVhbGx5IG5l
ZWQgZnVuY3Rpb24gbm90IHJlbGF0ZWQKPiA+ID4gdG8gdGhlIGdlbmVyYWwgZnMgaW50ZXJmYWNl
Lgo+ID4gCj4gPiBTdXJlLCB3aGVyZSBzaG91bGQgSSBkdW1wIHRoZXNlPwo+IAo+IE1heWJlIGEg
bmV3IGxpbnV4L2tlcm5lbF9yZWFkX2ZpbGUuaD8gIEJvbnVzIHBvaW50cyBmb3IgYSBzbWFsbCB0
b3AKPiBvZiB0aGUgZmlsZSBjb21tZW50IGV4cGxhaW5pbmcgdGhlIHBvaW50IG9mIHRoZSBpbnRl
cmZhY2UsIHdoaWNoIEkKPiBzdGlsbCBkb24ndCBnZXQgOikKCkluc3RlYWQgb2Ygcm9sbGluZyB5
b3VyIG93biBtZXRob2Qgb2YgaGF2aW5nIHRoZSBrZXJuZWwgcmVhZCBhIGZpbGUsCndoaWNoIHJl
cXVpcmVzIGNhbGwgc3BlY2lmaWMgc2VjdXJpdHkgaG9va3MsIHRoaXMgaW50ZXJmYWNlIHByb3Zp
ZGVzIGEKc2luZ2xlIGdlbmVyaWMgc2V0IG9mIHByZSBhbmQgcG9zdCBzZWN1cml0eSBob29rcy7C
oMKgVGhlCmtlcm5lbF9yZWFkX2ZpbGVfaWQgZW51bWVyYXRpb24gcGVybWl0cyB0aGUgc2VjdXJp
dHkgaG9vayB0bwpkaWZmZXJlbnRpYXRlIGJldHdlZW4gY2FsbGVycy4KClRvIGNvbXBseSB3aXRo
IHNlY3VyZSBhbmQgdHJ1c3RlZCBib290IGNvbmNlcHRzLCBhIGZpbGUgY2Fubm90IGJlCmFjY2Vz
c2libGUgdG8gdGhlIGNhbGxlciB1bnRpbCBhZnRlciBpdCBoYXMgYmVlbiBtZWFzdXJlZCBhbmQv
b3IgdGhlCmludGVncml0eSAoaGFzaC9zaWduYXR1cmUpIGFwcHJhaXNlZC4KCkluIHNvbWUgY2Fz
ZXMsIHRoZSBmaWxlIHdhcyBwcmV2aW91c2x5IHJlYWQgdHdpY2UsIGZpcnN0IHRvIG1lYXN1cmUK
YW5kL29yIGFwcHJhaXNlIHRoZSBmaWxlIGFuZCB0aGVuIHJlYWQgYWdhaW4gaW50byBhIGJ1ZmZl
ciBmb3IKdXNlLsKgwqBUaGlzIGludGVyZmFjZSByZWFkcyB0aGUgZmlsZSBpbnRvIGEgYnVmZmVy
IG9uY2UsIGNhbGxzIHRoZQpnZW5lcmljIHBvc3Qgc2VjdXJpdHkgaG9vaywgYmVmb3JlIHByb3Zp
ZGluZyB0aGUgYnVmZmVyIHRvIHRoZSBjYWxsZXIuCsKgKE5vdGUgdXNpbmcgZmlybXdhcmUgcHJl
LWFsbG9jYXRlZCBtZW1vcnkgbWlnaHQgYmUgYW4gaXNzdWUuKQoKUGFydGlhbCByZWFkaW5nIGZp
cm13YXJlIHdpbGwgcmVzdWx0IGluIG5lZWRpbmcgdG8gcHJlLXJlYWQgdGhlIGVudGlyZQpmaWxl
LCBtb3N0IGxpa2VseSBvbiB0aGUgc2VjdXJpdHkgcHJlIGhvb2suCgpNaW1pCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QK
a2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2tleGVjCg==
