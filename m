Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2708BA95
	for <lists+kexec@lfdr.de>; Tue, 13 Aug 2019 15:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvFeT0NtF8Jq/A1jMnk1cid+vVG6kAeDpPYFgsJ7PmE=; b=H/j91gwJ5nf2MG
	tAkyHTg2hWF/XclK++/pbIoYZ9jxLbMAaohB81/Jvbr5bRGNF3rcoYXzMPXIVpmkAPoxykkePHVpz
	w5BkXtrROeWcBqDfSh18gXXqwAFCyQhMOGKLxF+rvCsOi4qfeu8Yodeg027+gsFgrFbb21ZmRROLL
	tWGwA7y/jF8vVkMn0vHZn9froXfMyzghxzB2+H9/E9uUhmeNrZv5ofMqIPap5PpDdlp6RPvEHiMwp
	jcOoyX9Le/IRracIgZt7iwDQlLM5r0sXpcDFT7I4LaD55OzlBKicpDhf3qr1ZGLAy60XOAGMpt2GX
	/4qPEFnQXTi1tGRk0aCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxX3u-0001vt-8m; Tue, 13 Aug 2019 13:42:06 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxX3p-0001v9-Bx
 for kexec@lists.infradead.org; Tue, 13 Aug 2019 13:42:02 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D5024AC45;
 Tue, 13 Aug 2019 13:41:57 +0000 (UTC)
Date: Tue, 13 Aug 2019 15:42:46 +0200
From: Borislav Petkov <bp@suse.de>
To: Rong Chen <rong.a.chen@intel.com>
Subject: Re: [LKP] [x86/boot] 5b51ae969e: kexec boot failed
Message-ID: <20190813134246.GD17587@zn.tnic>
References: <97f74c86-54bd-f165-ce33-b53ca48ab850@intel.com>
 <20190802093024.GB30710@zn.tnic>
 <0f817336-2d87-2110-13c0-e0a417d70e90@intel.com>
 <20190805130221.GA18887@zn.tnic> <20190805133210.GB18887@zn.tnic>
 <c83ef145-83ef-d1b8-8a41-4957f20039e8@intel.com>
 <20190812093515.GE4894@zn.tnic>
 <73024440-f698-75e8-b8d0-76876ef67568@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <73024440-f698-75e8-b8d0-76876ef67568@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_064201_572013_9DE55652 
X-CRM114-Status: UNSURE (   6.73  )
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

T24gVHVlLCBBdWcgMTMsIDIwMTkgYXQgMDU6MTc6MzdQTSArMDgwMCwgUm9uZyBDaGVuIHdyb3Rl
Ogo+Y2xvc2UgdGhlIGNvbmZpZyBmaWxlIGZvciB5b3VyIHJlZmVyZW5jZS4KClRoYW5rcywgd2hh
dCBhYm91dCB0aGlzIHF1ZXN0aW9uIHdoaWNoIHlvdSBtaXNzZWQ6Cgo+IFR3byBxdWVzdGlvbnMg
SSBoYXZlIGFib3V0IHRoaXM6IHRoZSBmaXJzdCBrZXJuZWwgaXMgc29tZXRoaW5nIG9sZGVyOgo+
IDQuMTkuNjIuIEknbSBhc3N1bWluZyBrZXhlY2luZyBpbnRvIGEgbmV3ZXIga2VybmVsIGhhcyB3
b3JrZWQgdGhpcyB3YXkKPiBzbyBmYXI/CgotLSAKUmVnYXJkcy9HcnVzcywKICAgIEJvcmlzLgoK
U1VTRSBMaW51eCBHbWJILCBHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNy
aSBSYXNpYWgsIEhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9rZXhlYwo=
