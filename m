Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4E5899E2
	for <lists+kexec@lfdr.de>; Mon, 12 Aug 2019 11:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pe5KpNaJ27ecXI0b59H1V+gZWL2IIaHV50yPAa2lCfU=; b=XbbysNSsdM2Wtp
	DtQJNYl+HDe4if+LrQWYA2LjVoMUpU8FhbE7NbmvMXimi1ZeBAAo2LYENooWqulMWqGS7myJXeRpY
	PHsTgD7Pz1ueTX71FASFMLvHQ8sEr1BdDak8haBWSejnl7J1FyXYKTq/4PDi8Jujn0TpPpjqe+UMj
	NhEplOoLZ3+WoIjiziY6FnDwIWATkeEv8KEXB0CRa9g5vweyznagUfGzB+K9UIRnIOPrkSeKJA0u2
	SvUKn6Htwz4nAPDy862w/vaNOVtFqp0PDDDJ/r4iYBNvnEBKokv3vmgorIvGJhG/kNlDoEbMur1xc
	EbJCAYp71OhY8JWG8peA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx6ix-0006Ld-La; Mon, 12 Aug 2019 09:34:43 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx6iu-0006Kk-9P
 for kexec@lists.infradead.org; Mon, 12 Aug 2019 09:34:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3D7E7ADEC;
 Mon, 12 Aug 2019 09:34:37 +0000 (UTC)
Date: Mon, 12 Aug 2019 11:35:15 +0200
From: Borislav Petkov <bp@suse.de>
To: Rong Chen <rong.a.chen@intel.com>
Subject: Re: [LKP] [x86/boot] 5b51ae969e: kexec boot failed
Message-ID: <20190812093515.GE4894@zn.tnic>
References: <97f74c86-54bd-f165-ce33-b53ca48ab850@intel.com>
 <20190802093024.GB30710@zn.tnic>
 <0f817336-2d87-2110-13c0-e0a417d70e90@intel.com>
 <20190805130221.GA18887@zn.tnic> <20190805133210.GB18887@zn.tnic>
 <c83ef145-83ef-d1b8-8a41-4957f20039e8@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c83ef145-83ef-d1b8-8a41-4957f20039e8@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_023440_477415_553ADBB6 
X-CRM114-Status: UNSURE (   5.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: x86@kernel.org, Kairui Song <kasong@redhat.com>,
 Baoquan He <bhe@redhat.com>, Dave Young <dyoung@redhat.com>,
 Chao Fan <fanc.fnst@cn.fujitsu.com>, kexec@lists.infradead.org,
 Jun'ichi Nomura <j-nomura@ce.jp.nec.com>, lkp@01.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMTIsIDIwMTkgYXQgMDM6NDM6MzNQTSArMDgwMCwgUm9uZyBDaGVuIHdyb3Rl
Ogo+IEFuZCBwbGVhc2UgZmluZCB0aGUgcHJlLWRtZXNnIGluIHRoZSBhdHRhY2htZW50LgoKVGhh
bmtzLgoKVHdvIHF1ZXN0aW9ucyBJIGhhdmUgYWJvdXQgdGhpczogdGhlIGZpcnN0IGtlcm5lbCBp
cyBzb21ldGhpbmcgb2xkZXI6CjQuMTkuNjIuIEknbSBhc3N1bWluZyBrZXhlY2luZyBpbnRvIGEg
bmV3ZXIga2VybmVsIGhhcyB3b3JrZWQgdGhpcyB3YXkKc28gZmFyPwoKQWxzbywgY2FuIHlvdSB1
cGxvYWQgdGhlIC5jb25maWcgb2YgdGhhdCA0LjE5IGtlcm5lbCB0b28/CgpUaHguCgotLSAKUmVn
YXJkcy9HcnVzcywKICAgIEJvcmlzLgoKU1VTRSBMaW51eCBHbWJILCBHRjogRmVsaXggSW1lbmTD
tnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgsIEhSQiAyMTI4NCAoQUcgTsO8cm5iZXJn
KQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMg
bWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
