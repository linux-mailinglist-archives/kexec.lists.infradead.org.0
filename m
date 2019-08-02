Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A79187F096
	for <lists+kexec@lfdr.de>; Fri,  2 Aug 2019 11:30:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rpwmaqENuVgWQrCKp2PBVzHQImc+3308GMZJ/V7sYkM=; b=AVNHuSxPeJJQjS
	FTc8MLfWN6KqLvLzQuS8mGg+5BVALEYzZr+vpWaEOta1Oq1lPt2N2P+MRPi/dXg12U1eNMFePJxMr
	W9bVBKREIsHCtNGPjkj1PJVT+5ax40kWVtV6vyOAlxcxbwpp/+B/BQYxdUqvqAKiqAOkztfXoL5DA
	5mhW1mFcQEKQWMlkg55L73lQverEHrju64O9f63Gzx0k16c+AajpcgEPGPSFHBVdVQxe39MjsG51R
	bK7kuC49R4biHB9ELzNh99bH5nguvi1Lz0uYfRzZ42xypaun/C4X7PeUnHh64YUls8XdhxRhl9EHu
	0SXVN9nmc8Jbm0lnnLeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htTtY-0000XZ-1v; Fri, 02 Aug 2019 09:30:40 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htTtT-0000Wn-LY
 for kexec@lists.infradead.org; Fri, 02 Aug 2019 09:30:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C2779AFE2;
 Fri,  2 Aug 2019 09:30:30 +0000 (UTC)
Date: Fri, 2 Aug 2019 11:30:24 +0200
From: Borislav Petkov <bp@suse.de>
To: kernel test robot <rong.a.chen@intel.com>
Subject: Re: [x86/boot] 5b51ae969e: kexec boot failed
Message-ID: <20190802093024.GB30710@zn.tnic>
References: <97f74c86-54bd-f165-ce33-b53ca48ab850@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <97f74c86-54bd-f165-ce33-b53ca48ab850@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_023035_852507_0C8227D1 
X-CRM114-Status: UNSURE (   7.57  )
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
 Baoquan He <bhe@redhat.com>, lkp@01.org, Chao Fan <fanc.fnst@cn.fujitsu.com>,
 kexec@lists.infradead.org, Jun'ichi Nomura <j-nomura@ce.jp.nec.com>,
 Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gRnJpLCBBdWcgMDIsIDIwMTkgYXQgMDM6NDg6NTNQTSArMDgwMCwga2VybmVsIHRlc3Qgcm9i
b3Qgd3JvdGU6Cj4gRllJLCB3ZSBub3RpY2VkIHRoZSBmb2xsb3dpbmcgY29tbWl0IChidWlsdCB3
aXRoIGdjYy03KToKPiAKPiBjb21taXQ6IDViNTFhZTk2OWUzZDhhYjAxMzRlZTNjOThhNzY5YWQ2
ZDJjYzJlMjQgKCJ4ODYvYm9vdDogQ2FsbCBnZXRfcnNkcF9hZGRyKCkgYWZ0ZXIgY29uc29sZV9p
bml0KCkiKQo+IGh0dHBzOi8va2VybmVsLmdvb2dsZXNvdXJjZS5jb20vcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdCAgbWFzdGVyCj4gCj4gaW4gdGVzdGNhc2U6IGJv
b3QKPiAKPiBvbiB0ZXN0IG1hY2hpbmU6IEludGVsKFIpIENvcmUoVE0pIGkzLTMyMjAgQ1BVIEAg
My4zMEdIeiB3aXRoIDRHIG1lbW9yeQo+IAo+IFRoZSBjb21taXQgYnJva2Uga2V4ZWMgYm9vdCBv
biBwaHlzaWNhbCBtYWNoaW5lcywgV2UgaGF2ZSB0byBzZXQgIm5va2FzbHIiIHRvIGtlcm5lbCBj
bWRsaW5lIHRvIGF2b2lkIHRoZSBpc3N1ZS4KCkhvdyBleGFjdGx5IGRvIHlvdSB0cmlnZ2VyIGl0
PyBEZXRhaWxzPwoKLS0gClJlZ2FyZHMvR3J1c3MsCiAgICBCb3Jpcy4KClNVU0UgTGludXggR21i
SCwgR0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoLCBIUkIg
MjEyODQgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
