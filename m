Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 813A9A83C0
	for <lists+kexec@lfdr.de>; Wed,  4 Sep 2019 15:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DgVWBxOLkye+6jiV395CkyHManWMIrEa9Cjg1Q7OLKo=; b=Y0rgu7lc8K3U2U
	gftMXv4s47t60FZIlq/Yo4899V07y207crFflogtwBdsCgkfnc9wrnQIM8D71b2KG46iu0K5tQ9ru
	HfIfv6RnSpPKa2X5eWATnTQ28ybrxcL1dL3wX5QWqiIdCDjTuZnX3XYFH+VLp8Ny36KtYZqcxtWQX
	ueUaBJfvIJQNRf4TAnI/g+wxMBv7pPhuXlCGMFTARJnFD4EJ9VVLHb6JXb7t3pfL+vlGpsHmicXaK
	ALxSHOMiK1DpOVUrCI/PcOCJiBmB9o3aSlRrHnrbZLolTEcJwvLh3ElitFmvy47HF9sY1lLPpcdyQ
	/S86G4MUXbGXyViPVY4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5VLz-0008AE-Jr; Wed, 04 Sep 2019 13:29:43 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5VLv-00089n-4p
 for kexec@lists.infradead.org; Wed, 04 Sep 2019 13:29:40 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DEA761918645;
 Wed,  4 Sep 2019 13:29:36 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-70.pek2.redhat.com [10.72.12.70])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 22BF1600CD;
 Wed,  4 Sep 2019 13:29:26 +0000 (UTC)
Subject: Re: [PATCH 0/4 v2] Limit the size of vmcore-dmesg.txt to 2G
To: Simon Horman <horms@verge.net.au>
References: <20190823120539.18330-1-lijiang@redhat.com>
 <21c5b324-c3f5-4fb4-25da-e62610b2becd@redhat.com>
 <20190903143730.lz45x774rhmefjzg@verge.net.au>
From: lijiang <lijiang@redhat.com>
Message-ID: <a4c38d0b-d702-037e-74aa-889900bb63a5@redhat.com>
Date: Wed, 4 Sep 2019 21:29:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190903143730.lz45x774rhmefjzg@verge.net.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Wed, 04 Sep 2019 13:29:36 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_062939_209551_CE55ED5C 
X-CRM114-Status: GOOD (  12.93  )
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
Cc: kasong@redhat.com, bhe@redhat.com, piliu@redhat.com, bhsharma@redhat.com,
 kexec@lists.infradead.org, junw99@yahoo.com, dyoung@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQwOeaciDAz5pelIDIyOjM3LCBTaW1vbiBIb3JtYW4g5YaZ6YGTOgo+IE9uIFdl
ZCwgQXVnIDI4LCAyMDE5IGF0IDA1OjE4OjU4UE0gKzA4MDAsIGxpamlhbmcgd3JvdGU6Cj4+IEhp
LCBTaW1vbiBhbmQgb3RoZXIgcmV2aWV3ZXJzLCBhbnkgY29tbWVudCBhYm91dCB2Mj8KPiAKPiBI
aSwKPiAKPiBzb3JyeSBmb3IgdGhlIGV4dGVuZGVkIGRlbGF5Lgo+IEkgd2lsbCBsb29rIG92ZXIg
dGhpcy4KPiAKTmV2ZXIgbWluZC4gQW55IHN1Z2dlc3Rpb25zIHdpbGwgYmUgYXBwcmVjaWF0ZWQu
CgpUaGFuayB5b3UgaW4gYWR2YW5jZS4KCkxpYW5ibwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9r
ZXhlYwo=
