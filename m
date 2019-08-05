Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA2F81D52
	for <lists+kexec@lfdr.de>; Mon,  5 Aug 2019 15:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAl38nzSOFZrkONQGDCM28Zwd+bC1kPKtHpqd83CO+Y=; b=nuvdbk/qBy9fmF
	6/2U3fcl9OeJSBWdEsq9mGAD1XYDTrNnQT5dF1cIqzcwfPoK+sNl8Gmyb/ocX0vFPiJumFvhvWXH4
	KTv+TSoHSY+4y/bW4fKxE0A6e/4KjYRI3i2alGVAH3RVpF6on1EodW2JxgID9c9lWIKP+2j0hvtLE
	B8SmEucrrAWR0r352vOub9rNd8Mih70x/RJaFI5vLVHqMm4SnjggjsKvB1fUeTa4Sx1kDYODIpwkP
	yl6kyHtFDLEUti6N8DvQ+u4J2lU2zv/xxFOyu0SZg0hZAej9O41iKNn+bxqRyXXvP22yhog6PyMRo
	I9wk8hdbDJAqQ5fqW1jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hud66-0005uA-Q4; Mon, 05 Aug 2019 13:32:22 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hud63-0005tY-2o
 for kexec@lists.infradead.org; Mon, 05 Aug 2019 13:32:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A32D6ACB4;
 Mon,  5 Aug 2019 13:32:17 +0000 (UTC)
Date: Mon, 5 Aug 2019 15:32:10 +0200
From: Borislav Petkov <bp@suse.de>
To: "Chen, Rong A" <rong.a.chen@intel.com>
Subject: Re: [LKP] [x86/boot] 5b51ae969e: kexec boot failed
Message-ID: <20190805133210.GB18887@zn.tnic>
References: <97f74c86-54bd-f165-ce33-b53ca48ab850@intel.com>
 <20190802093024.GB30710@zn.tnic>
 <0f817336-2d87-2110-13c0-e0a417d70e90@intel.com>
 <20190805130221.GA18887@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805130221.GA18887@zn.tnic>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_063219_271257_67A89682 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: x86@kernel.org, Kairui Song <kasong@redhat.com>,
 Baoquan He <bhe@redhat.com>, Dave Young <dyoung@redhat.com>,
 Chao Fan <fanc.fnst@cn.fujitsu.com>, kexec@lists.infradead.org,
 Jun'ichi Nomura <j-nomura@ce.jp.nec.com>, lkp@01.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMDUsIDIwMTkgYXQgMDM6MDI6MjFQTSArMDIwMCwgQm9yaXNsYXYgUGV0a292
IHdyb3RlOgo+IE9uIE1vbiwgQXVnIDA1LCAyMDE5IGF0IDA3OjQ5OjU0UE0gKzA4MDAsIENoZW4s
IFJvbmcgQSB3cm90ZToKPiA+IFdlIHVzZSB0aGUgZm9sbG93aW5nIGNvbW1hbmQgdG8gYm9vdCBh
IG5ldyBrZXJuZWw6Cj4gPiBrZXhlYyAtLW5vZWZpIC1sIC9vcHQvcm9vdGZzL3RtcC9wa2cvbGlu
dXgveDg2XzY0LXJoZWwtNy42L2djYy03LzViNTFhZTk2OWUzZDhhYjAxMzRlZTNjOThhNzY5YWQ2
ZDJjYzJlMjQvdm1saW51ei01LjIuMC1yYzMtMDAwMDQtZzViNTFhZTk2OWUzZDhhCj4gPiAtLWlu
aXRyZD0vb3B0L3Jvb3Rmcy90bXAvaW5pdHJkLWNvbmNhdGVuYXRlZAo+IAo+IEFuZCB0aGlzICJj
b25jYXRlbmF0ZWQiIGluaXRyZCwgaG93IGRvIHlvdSBnZW5lcmF0ZSB0aGF0PwoKQW5kIHRoZSAi
LWwiIHRoaW5nIGlzIGp1c3QgdGhlIGtleGVjIGxvYWQgY29tbWFuZCB0byBsb2FkIHRoZSBzZWNv
bmQKa2VybmVsLiBJIG5lZWQgeW91IHRvIGdpdmUgbWUgYSBzdGVwLWJ5LXN0ZXAsIGV4YWN0IGNv
bW1hbmQtYnktY29tbWFuZApsaXN0IG9mIHRoaW5ncyB5b3UgZG8gdG8gdHJpZ2dlci4KCkFsc28s
IHBscyBzZW5kIG1lIGRtZXNnIGZyb20gdGhlIGZpcnN0IGtlcm5lbC4gUHJpdmF0ZWx5IGlzIGZp
bmUgdG9vLgoKVGh4LgoKLS0gClJlZ2FyZHMvR3J1c3MsCiAgICBCb3Jpcy4KClNVU0UgTGludXgg
R21iSCwgR0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoLCBI
UkIgMjEyODQgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
