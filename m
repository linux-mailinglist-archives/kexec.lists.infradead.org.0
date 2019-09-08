Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA4BAD0FC
	for <lists+kexec@lfdr.de>; Mon,  9 Sep 2019 00:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aAv455YJjIrgTg9ZSikjK5haOtk/cRAPNlM42Ar67uI=; b=maNPuZCEE8qmyG
	GVM0XFd/ZH2lfRj0RhmbMvWIuTwbxxjiQmpEySv9NeweDATOaVS5jA7L5cCNAISIwag1K/iiotEtz
	YXt4PjzKNVHHM1nW0poXuvo9sH8krL5dRpPVhZSlgjImCxaYpGYJCif7L3PiOyhSnTpiguB6xGqJz
	XE2jdf/C/L3k3T671CahACt2vBwqNnHuGjHS9NI491gUKxNFlmcjlIYV8PTNYUe/qI9UcSvwM66Un
	7Oe1GujftZZZsBDLzdBXj6/k5Qf7AS+eZQMF0zgNDcQLUx0dSP4m4gw76Ykm8qo3APQkrywzTKVJD
	61xX56PN89Ie8N3LN8bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i75SR-0001S9-5K; Sun, 08 Sep 2019 22:14:55 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i75SA-00017o-Je
 for kexec@lists.infradead.org; Sun, 08 Sep 2019 22:14:39 +0000
Received: from penelope.horms.nl (195-23-252-147.net.novis.pt [195.23.252.147])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 5C8E325BE27;
 Mon,  9 Sep 2019 08:14:30 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 12132E21664; Sun,  8 Sep 2019 14:40:08 +0200 (CEST)
Date: Sun, 8 Sep 2019 13:40:08 +0100
From: Simon Horman <horms@verge.net.au>
To: lijiang <lijiang@redhat.com>
Subject: Re: [PATCH 0/4 v2] Limit the size of vmcore-dmesg.txt to 2G
Message-ID: <20190908124007.uxcbbhqshbnsymd2@verge.net.au>
References: <20190823120539.18330-1-lijiang@redhat.com>
 <21c5b324-c3f5-4fb4-25da-e62610b2becd@redhat.com>
 <20190903143730.lz45x774rhmefjzg@verge.net.au>
 <a4c38d0b-d702-037e-74aa-889900bb63a5@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a4c38d0b-d702-037e-74aa-889900bb63a5@redhat.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_151438_798143_0F124B3F 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
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

T24gV2VkLCBTZXAgMDQsIDIwMTkgYXQgMDk6Mjk6MjBQTSArMDgwMCwgbGlqaWFuZyB3cm90ZToK
PiDlnKggMjAxOeW5tDA55pyIMDPml6UgMjI6MzcsIFNpbW9uIEhvcm1hbiDlhpnpgZM6Cj4gPiBP
biBXZWQsIEF1ZyAyOCwgMjAxOSBhdCAwNToxODo1OFBNICswODAwLCBsaWppYW5nIHdyb3RlOgo+
ID4+IEhpLCBTaW1vbiBhbmQgb3RoZXIgcmV2aWV3ZXJzLCBhbnkgY29tbWVudCBhYm91dCB2Mj8K
PiA+IAo+ID4gSGksCj4gPiAKPiA+IHNvcnJ5IGZvciB0aGUgZXh0ZW5kZWQgZGVsYXkuCj4gPiBJ
IHdpbGwgbG9vayBvdmVyIHRoaXMuCj4gPiAKPiBOZXZlciBtaW5kLiBBbnkgc3VnZ2VzdGlvbnMg
d2lsbCBiZSBhcHByZWNpYXRlZC4KPiAKPiBUaGFuayB5b3UgaW4gYWR2YW5jZS4KClNvcnJ5IG9u
Y2UgYWdhaW4gZm9yIHRoZSBkZWxheS4KCkkgaGF2ZSBhcHBsaWVkIHRoaXMgc2VyaWVzLgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGlu
ZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
