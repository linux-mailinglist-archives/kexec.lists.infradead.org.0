Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B851012C60E
	for <lists+kexec@lfdr.de>; Sun, 29 Dec 2019 18:53:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3OksMGjNluO8C4i3XgFqq/L9ZewaSRzbh62aEzrVanQ=; b=o9t6zM/Isy0npG
	TmRtBMR9vXfqOAO/2PHxR3KnlsZKqUZve5qdcTGHQaVHUOczsmbDsFHAAwD39ntdHjDLoYGWozkVd
	f9yiGKeKHZ57RPqOEFt9pDZyLc7F+z1XPHkwZA9AuIhTQqaj1cyaH03FsuOQWE/uyatu6YTtUqsHg
	4wp3Rbj1/YKO+LFReVTMN5opOto02iJUwXpAiIt66NfL6E4hKlGSVHaezOBRWxNYjzb/zOPcnh6ls
	gCob+wo7fb6mtR9qCopz6+2ShJk3GpknbXI8QQLDaGep5LdKsKoisIuSd5LGzQDjJj/gXwzRr0t01
	Ul5W0gceNbJK2Uyfhtzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilckp-0002Fk-To; Sun, 29 Dec 2019 17:53:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilckn-0002F9-0r
 for kexec@lists.infradead.org; Sun, 29 Dec 2019 17:53:26 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4719E206A4;
 Sun, 29 Dec 2019 17:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577642004;
 bh=d/OxfB3P0umzB0DvmM0BQBZusnP0OtOdTXH9gvu0Fo0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nEGrreVF+1Qe+9FKpMX2nyoIlN338KWjh+8B5zGFo2xdDFMxLomQH0qb3rjuHiBts
 RgY9XpRh/8RXfPsXUqnk5I3onSaaSyo9X5AU9NNqEefqHC8VNMn+ZePU8pDsnjnnpY
 wCoGWExmqOzqlBoJtRm4v0jLZ6S3+GtjRMYmhEm4=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.4 302/434] x86/crash: Add a forward declaration of struct
 kimage
Date: Sun, 29 Dec 2019 18:25:55 +0100
Message-Id: <20191229172722.012794847@linuxfoundation.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191229172702.393141737@linuxfoundation.org>
References: <20191229172702.393141737@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_095325_100355_0C093AB9 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Tom Lendacky <thomas.lendacky@amd.com>, Sasha Levin <sashal@kernel.org>,
 kbuild test robot <lkp@intel.com>, bhe@redhat.com,
 Ingo Molnar <mingo@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, x86-ml <x86@kernel.org>,
 kexec@lists.infradead.org, stable@vger.kernel.org, dhowells@redhat.com,
 horms@verge.net.au, ebiederm@xmission.com, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@suse.de>,
 dyoung@redhat.com, d.hatayama@fujitsu.com, vgoyal@redhat.com,
 Lianbo Jiang <lijiang@redhat.com>
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
L2FyY2gveDg2L2luY2x1ZGUvYXNtL2NyYXNoLmgKaW5kZXggMGFjZjVlZTQ1YTIxLi5lZjU2Mzhm
NjQxZjIgMTAwNjQ0Ci0tLSBhL2FyY2gveDg2L2luY2x1ZGUvYXNtL2NyYXNoLmgKKysrIGIvYXJj
aC94ODYvaW5jbHVkZS9hc20vY3Jhc2guaApAQCAtMiw2ICsyLDggQEAKICNpZm5kZWYgX0FTTV9Y
ODZfQ1JBU0hfSAogI2RlZmluZSBfQVNNX1g4Nl9DUkFTSF9ICiAKK3N0cnVjdCBraW1hZ2U7CisK
IGludCBjcmFzaF9sb2FkX3NlZ21lbnRzKHN0cnVjdCBraW1hZ2UgKmltYWdlKTsKIGludCBjcmFz
aF9jb3B5X2JhY2t1cF9yZWdpb24oc3RydWN0IGtpbWFnZSAqaW1hZ2UpOwogaW50IGNyYXNoX3Nl
dHVwX21lbW1hcF9lbnRyaWVzKHN0cnVjdCBraW1hZ2UgKmltYWdlLAotLSAKMi4yMC4xCgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWls
aW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
