Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4AAAD172
	for <lists+kexec@lfdr.de>; Mon,  9 Sep 2019 03:03:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2GeMlPwuvGS2ez7s/XpSO7hn4X65jULZrgpmtWnfyM=; b=DAO7nOOBh/A4Dn
	zjAG3LfvScLHcNHJMknypPXADlNp8v02sfjGe2Ka3xnZWx/hfznOjk3bAXE4BaueklUx2eOCd9FBK
	c2ftIhJxSlVZJMQo049D2Qy4HRS6aUENB8InHYm6fxgpNUZcQbnVal9iRO8h9rK6Z8q7FEgWYLGNO
	SL7koosfrSHybi3EaLKW8y0NOXfVG9F7+6drabkUWYKesDvWa5uERrsItQ/HFqIS+hAwckTxTqWNw
	uewWG/0TfaGVH3R+vGSlc6m8CJLjovgEtFOLEmciudmfPhrY62dfaVThskOjjbxI6Cv7Ae3JOp4pZ
	x5ynphbpFZ1MNu6Avf5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i785M-0006bo-Qv; Mon, 09 Sep 2019 01:03:16 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i785J-0006bT-OW
 for kexec@lists.infradead.org; Mon, 09 Sep 2019 01:03:15 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 83E4F7652B;
 Mon,  9 Sep 2019 01:03:11 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-84.pek2.redhat.com [10.72.12.84])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EE2A910018F8;
 Mon,  9 Sep 2019 01:03:04 +0000 (UTC)
Subject: Re: [PATCH 0/4 v2] Limit the size of vmcore-dmesg.txt to 2G
To: Simon Horman <horms@verge.net.au>
References: <20190823120539.18330-1-lijiang@redhat.com>
 <21c5b324-c3f5-4fb4-25da-e62610b2becd@redhat.com>
 <20190903143730.lz45x774rhmefjzg@verge.net.au>
 <a4c38d0b-d702-037e-74aa-889900bb63a5@redhat.com>
 <20190908124007.uxcbbhqshbnsymd2@verge.net.au>
From: lijiang <lijiang@redhat.com>
Message-ID: <e65d2335-c39e-4a4e-5dcb-8f0352ff8ee4@redhat.com>
Date: Mon, 9 Sep 2019 09:03:00 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190908124007.uxcbbhqshbnsymd2@verge.net.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Mon, 09 Sep 2019 01:03:11 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_180313_822013_6A729FAB 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kasong@redhat.com, bhe@redhat.com, piliu@redhat.com, bhsharma@redhat.com,
 kexec@lists.infradead.org, junw99@yahoo.com, dyoung@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQwOeaciDA45pelIDIwOjQwLCBTaW1vbiBIb3JtYW4g5YaZ6YGTOgo+IE9uIFdl
ZCwgU2VwIDA0LCAyMDE5IGF0IDA5OjI5OjIwUE0gKzA4MDAsIGxpamlhbmcgd3JvdGU6Cj4+IOWc
qCAyMDE55bm0MDnmnIgwM+aXpSAyMjozNywgU2ltb24gSG9ybWFuIOWGmemBkzoKPj4+IE9uIFdl
ZCwgQXVnIDI4LCAyMDE5IGF0IDA1OjE4OjU4UE0gKzA4MDAsIGxpamlhbmcgd3JvdGU6Cj4+Pj4g
SGksIFNpbW9uIGFuZCBvdGhlciByZXZpZXdlcnMsIGFueSBjb21tZW50IGFib3V0IHYyPwo+Pj4K
Pj4+IEhpLAo+Pj4KPj4+IHNvcnJ5IGZvciB0aGUgZXh0ZW5kZWQgZGVsYXkuCj4+PiBJIHdpbGwg
bG9vayBvdmVyIHRoaXMuCj4+Pgo+PiBOZXZlciBtaW5kLiBBbnkgc3VnZ2VzdGlvbnMgd2lsbCBi
ZSBhcHByZWNpYXRlZC4KPj4KPj4gVGhhbmsgeW91IGluIGFkdmFuY2UuCj4gCj4gU29ycnkgb25j
ZSBhZ2FpbiBmb3IgdGhlIGRlbGF5Lgo+IAo+IEkgaGF2ZSBhcHBsaWVkIHRoaXMgc2VyaWVzLgo+
IApPSywgdGhhbmsgeW91LCBTaW1vbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
