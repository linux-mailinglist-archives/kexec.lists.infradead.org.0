Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A21DD119A9E
	for <lists+kexec@lfdr.de>; Tue, 10 Dec 2019 23:05:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKhOnpEQaJnWHjFK/yT0s0YWSTOvnRDVL/xip0BDWO4=; b=VdUp3qkFZQQAhb
	TLW98+TXP3efGsP0L5W+LqueqV4htZCDl7NFBgrQlnpvYHVVSmRppCbq1hyBNml3uJq1JHpy3vKtH
	GW1De9XOGg+Q2SBKYauiRUGGTn2ui75oHDryn4wr8NgCtzTqu5r0Xz16sq3vjbsch7XSSq6AwrErK
	rUKEn/CxN0NJm/Wnlc0WwLE9B0+yoMhJ+IiplxaYbxYZmm/BXALKtYwdhxdxvsLFlBbNrQEPrCxtO
	B1/M3g+mVpjah6PltxrO2Xi9LRvX+J7U54TGC2f1IKjrZ+d+tTl1tikEfcoFnVLKnPVIkgExPOweu
	oTJvoixALmPlIwcCyy7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iendC-0002Mb-TA; Tue, 10 Dec 2019 22:05:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iend2-0001xV-5P
 for kexec@lists.infradead.org; Tue, 10 Dec 2019 22:05:15 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E40A6214AF;
 Tue, 10 Dec 2019 22:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576015511;
 bh=l21FHSd8GPHC4IagFr+tkgZpvOS6I667FH0fdL1bliU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ank1sulZuhEQSetPbvPHbk9cpgw4+ZG10HJVKufNRFTC93SWsmGUYID2GOxHfjAfs
 nd58sA3X60BOh4+1yKmXTqQ8+HlUH6lAqGPJYX4z6yeZRihiUEwKZV0SQU1tKyCjv2
 xytCxOLh7GMwfeI4KSE8PMLeDi4UGo5PVNAWBWaI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 109/130] x86/crash: Add a forward declaration of
 struct kimage
Date: Tue, 10 Dec 2019 17:02:40 -0500
Message-Id: <20191210220301.13262-109-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210220301.13262-1-sashal@kernel.org>
References: <20191210220301.13262-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_140513_213618_387AF047 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?q?J=C3=BCrgen=20Gross?= <jgross@suse.com>,
 Tom Lendacky <thomas.lendacky@amd.com>, Lianbo Jiang <lijiang@redhat.com>,
 bhe@redhat.com, Ingo Molnar <mingo@redhat.com>, x86-ml <x86@kernel.org>,
 kexec@lists.infradead.org, Sasha Levin <sashal@kernel.org>,
 dhowells@redhat.com, horms@verge.net.au, ebiederm@xmission.com,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 Borislav Petkov <bp@suse.de>, dyoung@redhat.com, d.hatayama@fujitsu.com,
 vgoyal@redhat.com, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

RnJvbTogTGlhbmJvIEppYW5nIDxsaWppYW5nQHJlZGhhdC5jb20+CgpbIFVwc3RyZWFtIGNvbW1p
dCAxMTJlZWU1ZDA2MDA3ZGFlNTYxZjE0NDU4YmRlN2YyYTQ4NzllZjRlIF0KCkFkZCBhIGZvcndh
cmQgZGVjbGFyYXRpb24gb2Ygc3RydWN0IGtpbWFnZSB0byB0aGUgY3Jhc2guaCBoZWFkZXIgYmVj
YXVzZQpmdXR1cmUgY2hhbmdlcyB3aWxsIGludm9rZSBhIGNyYXNoLXNwZWNpZmljIGZ1bmN0aW9u
IGZyb20gdGhlIHJlYWxtb2RlCmluaXQgcGF0aCBhbmQgdGhlIGNvbXBpbGVyIHdpbGwgY29tcGxh
aW4gb3RoZXJ3aXNlIGxpa2UgdGhpczoKCiAgSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGFyY2gveDg2
L3JlYWxtb2RlL2luaXQuYzoxMToKICAuL2FyY2gveDg2L2luY2x1ZGUvYXNtL2NyYXNoLmg6NToz
Mjogd2FybmluZzog4oCYc3RydWN0IGtpbWFnZeKAmSBkZWNsYXJlZCBpbnNpZGVcCiAgIHBhcmFt
ZXRlciBsaXN0IHdpbGwgbm90IGJlIHZpc2libGUgb3V0c2lkZSBvZiB0aGlzIGRlZmluaXRpb24g
b3IgZGVjbGFyYXRpb24KICAgICAgNSB8IGludCBjcmFzaF9sb2FkX3NlZ21lbnRzKHN0cnVjdCBr
aW1hZ2UgKmltYWdlKTsKICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBe
fn5+fn4KICAuL2FyY2gveDg2L2luY2x1ZGUvYXNtL2NyYXNoLmg6NjozNzogd2FybmluZzog4oCY
c3RydWN0IGtpbWFnZeKAmSBkZWNsYXJlZCBpbnNpZGVcCiAgIHBhcmFtZXRlciBsaXN0IHdpbGwg
bm90IGJlIHZpc2libGUgb3V0c2lkZSBvZiB0aGlzIGRlZmluaXRpb24gb3IgZGVjbGFyYXRpb24K
ICAgICAgNiB8IGludCBjcmFzaF9jb3B5X2JhY2t1cF9yZWdpb24oc3RydWN0IGtpbWFnZSAqaW1h
Z2UpOwogICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+
CiAgLi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9jcmFzaC5oOjc6Mzk6IHdhcm5pbmc6IOKAmHN0cnVj
dCBraW1hZ2XigJkgZGVjbGFyZWQgaW5zaWRlXAogICBwYXJhbWV0ZXIgbGlzdCB3aWxsIG5vdCBi
ZSB2aXNpYmxlIG91dHNpZGUgb2YgdGhpcyBkZWZpbml0aW9uIG9yIGRlY2xhcmF0aW9uCiAgICAg
IDcgfCBpbnQgY3Jhc2hfc2V0dXBfbWVtbWFwX2VudHJpZXMoc3RydWN0IGtpbWFnZSAqaW1hZ2Us
CiAgICAgICAgfAoKIFsgYnA6IFJld3JpdGUgdGhlIGNvbW1pdCBtZXNzYWdlLiBdCgpSZXBvcnRl
ZC1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IExp
YW5ibyBKaWFuZyA8bGlqaWFuZ0ByZWRoYXQuY29tPgpTaWduZWQtb2ZmLWJ5OiBCb3Jpc2xhdiBQ
ZXRrb3YgPGJwQHN1c2UuZGU+CkNjOiBiaGVAcmVkaGF0LmNvbQpDYzogZC5oYXRheWFtYUBmdWpp
dHN1LmNvbQpDYzogZGhvd2VsbHNAcmVkaGF0LmNvbQpDYzogZHlvdW5nQHJlZGhhdC5jb20KQ2M6
IGViaWVkZXJtQHhtaXNzaW9uLmNvbQpDYzogaG9ybXNAdmVyZ2UubmV0LmF1CkNjOiAiSC4gUGV0
ZXIgQW52aW4iIDxocGFAenl0b3IuY29tPgpDYzogSW5nbyBNb2xuYXIgPG1pbmdvQHJlZGhhdC5j
b20+CkNjOiBKw7xyZ2VuIEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+CkNjOiBrZXhlY0BsaXN0cy5p
bmZyYWRlYWQub3JnCkNjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KQ2M6
IFRvbSBMZW5kYWNreSA8dGhvbWFzLmxlbmRhY2t5QGFtZC5jb20+CkNjOiB2Z295YWxAcmVkaGF0
LmNvbQpDYzogeDg2LW1sIDx4ODZAa2VybmVsLm9yZz4KTGluazogaHR0cHM6Ly9sa21sLmtlcm5l
bC5vcmcvci8yMDE5MTEwODA5MDAyNy4xMTA4Mi00LWxpamlhbmdAcmVkaGF0LmNvbQpMaW5rOiBo
dHRwczovL2xrbWwua2VybmVsLm9yZy9yLzIwMTkxMDMxMDIzMy5FSlJ0VE1XUCUyNWxrcEBpbnRl
bC5jb20KU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPgotLS0K
IGFyY2gveDg2L2luY2x1ZGUvYXNtL2NyYXNoLmggfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC94ODYvaW5jbHVkZS9hc20vY3Jhc2guaCBi
L2FyY2gveDg2L2luY2x1ZGUvYXNtL2NyYXNoLmgKaW5kZXggYTdhZGIyYmZiZjBiOC4uNmI4YWQ2
ZmEzOTc5YSAxMDA2NDQKLS0tIGEvYXJjaC94ODYvaW5jbHVkZS9hc20vY3Jhc2guaAorKysgYi9h
cmNoL3g4Ni9pbmNsdWRlL2FzbS9jcmFzaC5oCkBAIC0yLDYgKzIsOCBAQAogI2lmbmRlZiBfQVNN
X1g4Nl9DUkFTSF9ICiAjZGVmaW5lIF9BU01fWDg2X0NSQVNIX0gKIAorc3RydWN0IGtpbWFnZTsK
KwogaW50IGNyYXNoX2xvYWRfc2VnbWVudHMoc3RydWN0IGtpbWFnZSAqaW1hZ2UpOwogaW50IGNy
YXNoX2NvcHlfYmFja3VwX3JlZ2lvbihzdHJ1Y3Qga2ltYWdlICppbWFnZSk7CiBpbnQgY3Jhc2hf
c2V0dXBfbWVtbWFwX2VudHJpZXMoc3RydWN0IGtpbWFnZSAqaW1hZ2UsCi0tIAoyLjIwLjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWls
aW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
