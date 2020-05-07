Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DC41C9EF0
	for <lists+kexec@lfdr.de>; Fri,  8 May 2020 01:07:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oo/OJzrnS+XwXX2SOO61u1QEt7CCIxvYrdXk4QV2Zt4=; b=gF2O14gsYKXZY+
	/9SwgN2peNHs7PaT3VQTGhJMpoNFz+SsO9wcG7Qz7/HICjS9EKb6R224p3H86qHWtGM/KWFFSmUrS
	S1cqUyrWgy9gPmQEKZ96F168nE2J34zVGv6mhq5A+ezNXHCrpaRHRqMG3VPwAIMCLxJo8LjprZ5M+
	1tCMJpIb+TJzAjaB5A6MTf4Juye3e2zg1iVIL0SlxjdnP04Eke7P0MgKBuLE/S4IaM1Ykdr1gsstr
	/18u9DYNEZczOqJdJNSoi30r2tUfprTUCwW+fQbXDi7y178TAyCI/DPO1Er0V7E9CHt7hAKRRKL3m
	wedMxKsah7sJpzbQxk1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWpc2-00012o-6m; Thu, 07 May 2020 23:07:30 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWpbv-000123-2t
 for kexec@lists.infradead.org; Thu, 07 May 2020 23:07:24 +0000
Received: by mail-qt1-x844.google.com with SMTP id h26so1069057qtu.8
 for <kexec@lists.infradead.org>; Thu, 07 May 2020 16:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=cDgv5RBBNmmZoeVkSdRHbb+p5n1j6gbGkVNuskYknK8=;
 b=irn2+fcrxp6NonlZzAmEkP+IcmaZPlVzbzxmfCG6lVabw4/G0dFt3sq6PNTCVMGxGG
 mHrxFYOqL919h6uaxEl0JW7dIaw8NB10ABm7DPmqf/EhfuWGsilf0Zdh4cihFDxim+Mo
 2oiV63mSEiHMYHoenvD/gjwZA2LAweN8EWw+tYVdcFwe7a8XKwwE9AkeASQmt+OrM6Ud
 66rqMK51DOb0gUzTcrOl8r0cDm0oT8FMB5ERjpMlkKlVh00sAuv1oGi7o++rQCXNEyy3
 NK/+1D+NyYl6NPUHDAAe/3i2dWdBxPkf5biMBOG9YHzAaT3acw0lJR7KTsOkpXlpkwHt
 Jr4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=cDgv5RBBNmmZoeVkSdRHbb+p5n1j6gbGkVNuskYknK8=;
 b=qO/IYYosXpAgfYbrKpk4x37zyM5bAR+hkVKoB7eUSWIBGoBPU+gwP5/uU8v83AM1XJ
 tRbCpZwHtA8lDuNzQY7axSSeF5MnUyD3p8sPcoMPUIRRREovyZQxJpKv36gzQTKMnmLD
 QxlC1j00+eTFiZYLyXzdxQKtGX48HXCf6xp6XkcdNs7y7cqersaiHmQ8PoiRnH1ThI+b
 Z+ruH2ChtxP2GNip8egBu6UW8o1McPhu8zK7CuAxBRFGahTFH47vqQWY0ARyJlc/wjPG
 e1GvyA7EXYx+9c8l+2KYEW0WyamA96AQ55iH+8ewZHNmb9kxR+kPBXYw5XSmktOWu9Yc
 ZzHQ==
X-Gm-Message-State: AGi0PubmXv3E31oOdFiGvzkzjQU65uIYRuAsDBQhRtIrLiiZ0lxkrlbZ
 qHknP6F/kiW6KvmsjprYaNeGiw==
X-Google-Smtp-Source: APiQypJ8nv0rS/6ipD0+tlnjwjtkoEW9gBSgFlE4m3C077d6wO4jOE6P+FabQVeufE8QHwU+D1XMog==
X-Received: by 2002:ac8:46c9:: with SMTP id h9mr16757891qto.128.1588892841789; 
 Thu, 07 May 2020 16:07:21 -0700 (PDT)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id b126sm5170080qkc.119.2020.05.07.16.07.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 16:07:21 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] kernel: add panic_on_taint
Date: Thu, 7 May 2020 19:07:20 -0400
Message-Id: <6B423101-ACF4-49A3-AD53-ACBF87F1ABE0@lca.pw>
References: <20200507221503.GL205881@optiplex-lnx>
In-Reply-To: <20200507221503.GL205881@optiplex-lnx>
To: Rafael Aquini <aquini@redhat.com>
X-Mailer: iPhone Mail (17D50)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_160723_127007_75CC0D38 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>, Baoquan He <bhe@redhat.com>,
 linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 kexec@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, dyoung@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSA3LCAyMDIwLCBhdCA2OjE1IFBNLCBSYWZhZWwgQXF1aW5pIDxhcXVpbmlAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4gCj4gSXQncyBhIHJlYXNvbmFibGUgYW5kIHNlbGYtY29udGFpbmVk
IGZlYXR1cmUgdGhhdCB3ZSBoYXZlIGEgdmFsaWQgdXNlIGZvci4gCj4gSSBob25lc3RseSBmYWls
IHRvIHNlZSBpdCBjYXVzaW5nIHRoYXQgYW1vdW50IG9mIGFubm95YW5jZSBhcyB5b3UgYXJlIAo+
IHN1Z2dlc3RpbmcgaGVyZS4KCkl0IGlzIG5vdCBhIGJpZyB0cm91YmxlIHlldCwgYnV0IGtlZXBp
bmcgYW4gb2Jzb2xldGUgcGF0Y2ggdGhhdCBub3QgdmVyeSBzdHJhaWdodGZvcndhcmQgdG8gZmln
dXJlIG91dCB0aGF0IGl0IHdpbGwgYmUgc3VwZXJzZWRlZCBieSB0aGUgcGFuaWNfb25fdGFpbnQg
cGF0Y2ggd2lsbCBvbmx5IGNhdXNlIG1vcmUgY29uZnVzaW9uIHRoZSBsb25nZXIgaXQgaGFzIHN0
YXllZCBpbiBsaW51eC1uZXh0LgoKVGhlIHRoaW5nIGlzIHRoYXQgZXZlbiBpZiB5b3UgY2Fu4oCZ
dCBnZXQgdGhpcyBwYW5pY19vbl90YWludCAodGhlIHN1cGVyaW9yIHNvbHV0aW9uKSBwYXRjaCBh
Y2NlcHRlZCBmb3Igc29tZSByZWFzb25zLCBzb21lb25lIGVsc2UgY291bGQgc3RpbGwgd29yayBv
biBpdCB1bnRpbCBpdCBnZXQgbWVyZ2VkLgoKVGh1cywgSSBmYWlsZWQgdG8gc2VlIGFueSBwb3Nz
aWJpbGl0eSB3ZSB3aWxsIGdvIGJhY2sgdG8gdGhlIGluZmVyaW9yIHNvbHV0aW9uIChtbS1zbHVi
LWFkZC1wYW5pY19vbl9lcnJvci10by10aGUtZGVidWctZmFjaWxpdGllcy5wYXRjaCkgYnkgYWxs
IG1lYW5zLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpr
ZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
