Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47344AEC7E
	for <lists+kexec@lfdr.de>; Tue, 10 Sep 2019 15:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FB0O1C1gURUHBL2v545Dv/KCEim/aaUzqKWxyKqNbIk=; b=sb+Ucve6F6QuQ+
	O/MOH8P1Q06un6eGVuYLRAvai2BxD4U3qmL5sGzoYsvf7BNspYXBdplguy967aUFuTOxgkaiST0s3
	ReWaLFsDl/Fa3BMyt1md9FdmGr9n7+dB9AzVZeoYJOwv7smCChz0DVjyVA/0crHaYj6uhvrK9P9Mm
	FlE8aXwIZ2hKNtTvXvLHMrE/BkE+PD17qWJHYruXsjKSdlAcDR3aEitA9nWpES4ws/WiPmLeQprBc
	TmFEp5o8qyxsTx6VHnPa7bKsKdsONgOPxS16pVD/ZzSzzwpHYhJ2AbWJYQNo3NuhImYV9BtG01FgR
	2yyAtohkm4zDko3Tu2jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7gc3-0002ZE-Ht; Tue, 10 Sep 2019 13:55:19 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7gby-0002Ye-Sc
 for kexec@lists.infradead.org; Tue, 10 Sep 2019 13:55:16 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CBC5510C092B;
 Tue, 10 Sep 2019 13:55:13 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-115.pek2.redhat.com
 [10.72.12.115])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C4B8760923;
 Tue, 10 Sep 2019 13:55:11 +0000 (UTC)
Subject: Re: [PATCH 1/2] vmcore-dmesg/vmcore-dmesg.c: Fix shifting error
 reported by cppcheck
To: Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org
References: <20190910102150.7229-1-bhsharma@redhat.com>
 <20190910102150.7229-2-bhsharma@redhat.com>
From: lijiang <lijiang@redhat.com>
Message-ID: <50726111-29ef-6054-edd3-f9c9214442e8@redhat.com>
Date: Tue, 10 Sep 2019 21:55:07 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190910102150.7229-2-bhsharma@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.66]); Tue, 10 Sep 2019 13:55:13 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_065514_949621_10A78FE3 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: bhupesh.linux@gmail.com, horms@verge.net.au
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQwOeaciDEw5pelIDE4OjIxLCBCaHVwZXNoIFNoYXJtYSDlhpnpgZM6Cj4gUnVu
bmluZyAnY3BwY2hlY2snIHN0YXRpYyBjb2RlIGFuYWx5emVyIChzZWUgY3BwY2hlY2soMSkpCj4g
IG9uICd2bWNvcmUtZG1lc2cvdm1jb3JlLWRtZXNnLmMnIHNob3dzIHRoZSBmb2xsb3dpbmcKPiBz
aGlmdGluZyBlcnJvcjoKPiAKPiAkIGNwcGNoZWNrICAtLWVuYWJsZT1hbGwgIHZtY29yZS1kbWVz
Zy92bWNvcmUtZG1lc2cuYwo+IENoZWNraW5nIHZtY29yZS1kbWVzZy92bWNvcmUtZG1lc2cuYyAu
Li4KPiBbdm1jb3JlLWRtZXNnL3ZtY29yZS1kbWVzZy5jOjE3XTogKGVycm9yKSBTaGlmdGluZyBz
aWduZWQgMzItYml0IHZhbHVlIGJ5IDMxIGJpdHMgaXMgdW5kZWZpbmVkIGJlaGF2aW91cgo+IAo+
IEZpeCB0aGUgc2FtZSB2aWEgdGhpcyBwYXRjaC4KPiAKPiBDYzogTGlhbmJvIEppYW5nIDxsaWpp
YW5nQHJlZGhhdC5jb20+Cj4gQ2M6IFNpbW9uIEhvcm1hbiA8aG9ybXNAdmVyZ2UubmV0LmF1Pgo+
IFNpZ25lZC1vZmYtYnk6IEJodXBlc2ggU2hhcm1hIDxiaHNoYXJtYUByZWRoYXQuY29tPgo+IC0t
LQo+ICB2bWNvcmUtZG1lc2cvdm1jb3JlLWRtZXNnLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS92bWNvcmUt
ZG1lc2cvdm1jb3JlLWRtZXNnLmMgYi92bWNvcmUtZG1lc2cvdm1jb3JlLWRtZXNnLmMKPiBpbmRl
eCA4MWMyYTU4Li4xMjJlNTM2IDEwMDY0NAo+IC0tLSBhL3ZtY29yZS1kbWVzZy92bWNvcmUtZG1l
c2cuYwo+ICsrKyBiL3ZtY29yZS1kbWVzZy92bWNvcmUtZG1lc2cuYwo+IEBAIC02LDcgKzYsNyBA
QCB0eXBlZGVmIEVsZjMyX05oZHIgRWxmX05oZHI7Cj4gIGV4dGVybiBjb25zdCBjaGFyICpmbmFt
ZTsKPiAgCj4gIC8qIHN0b2xlIHRoaXMgbWFjcm8gZnJvbSBrZXJuZWwgcHJpbnRrLmMgKi8KPiAt
I2RlZmluZSBMT0dfQlVGX0xFTl9NQVggKHVpbnQzMl90KSgxIDw8IDMxKQo+ICsjZGVmaW5lIExP
R19CVUZfTEVOX01BWCAodWludDMyX3QpKDFVIDw8IDMxKQo+IAoKVGhpcyBsb29rcyBiZXR0ZXIu
IFRoYW5rIHlvdSwgQmh1cGVzaC4KCj4gIHN0YXRpYyB2b2lkIHdyaXRlX3RvX3N0ZG91dChjaGFy
ICpidWYsIHVuc2lnbmVkIGludCBucikKPiAgewo+IAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9r
ZXhlYwo=
