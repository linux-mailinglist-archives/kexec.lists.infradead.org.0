Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 061DF25A96
	for <lists+kexec@lfdr.de>; Wed, 22 May 2019 01:04:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FrfWxKQz++s/vtKno1OP78R9Z7tQLWZ4QqmqACD2Ck=; b=FstRq9jZtGWZL6
	Ikg0jnF+xKDMDaPw+sVto5urup5Vv6TXpbG4q9+lxJU9Yea8hy4VBi5qUDa0hTaYdYAc5d0rRFXN+
	A8Ao+UvN5EqhfeDBHfZ+tUiXDYGnz0/RCF+LyP2WwbL4I3BZ7V11ql8uCJ+v20j0BUK5d1k40THVs
	8aFJSGi7qfYCrdvHmFS9WJKCDB/KkAkJwjUpi4JzKK0NFW6VCjkSsaZatB2W9/XeVNNkuhE8NGWY2
	GwH3v7Sa98eddPrexxbJ8jsOlL0vtgJ6i1o/R+W0Zux2OsFNiNv5OHjMbw2yGETE9iYTv/HwciRey
	DQrpi01AMxlyQh6WxgzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTDnf-00069z-LA; Tue, 21 May 2019 23:04:03 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTDnd-00069W-30
 for kexec@lists.infradead.org; Tue, 21 May 2019 23:04:02 +0000
Received: from cz.tnic (ip65-44-65-130.z65-44-65.customer.algx.net
 [65.44.65.130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 986821EC0513;
 Wed, 22 May 2019 01:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1558479834;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=pLs8mJG8yjRVO9KTlyvBjTEAD8Qsf2DO8OLUOX9pAA8=;
 b=IEpXxZiqzeZ7nsaaim7JSOYtD7ZWSj9jUCv+8Lf0qR1wVel8BARKwTDmyToSk+IcDtnChv
 yGq0qZfcxiOoBOD1+BOGNQcOXwmzi1n7/9hyvdJzFvbSCmCHshpHl2KYM61QCO76ospCML
 hOd3lm5TpAy9J0HAw7HzVqOjAGchzHo=
Date: Wed, 22 May 2019 01:04:21 +0200
From: Borislav Petkov <bp@alien8.de>
To: Dirk van der Merwe <dirk.vandermerwe@netronome.com>,
 Ingo Molnar <mingo@kernel.org>
Subject: Re: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
Message-ID: <20190521230421.GA2435@cz.tnic>
References: <20190429002318.GA25400@MiWiFi-R3L-srv>
 <20190429135536.GC2324@zn.tnic>
 <20190513014248.GA16774@MiWiFi-R3L-srv>
 <20190513070725.GA20105@zn.tnic>
 <20190513073254.GB16774@MiWiFi-R3L-srv>
 <20190513075006.GB20105@zn.tnic>
 <20190513080653.GD16774@MiWiFi-R3L-srv>
 <20190514032208.GA25875@dhcp-128-65.nay.redhat.com>
 <20190514033338.GA6612@MiWiFi-R3L-srv>
 <c640061a-a7c5-5bc3-87b6-0ee7af5a4b43@netronome.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c640061a-a7c5-5bc3-87b6-0ee7af5a4b43@netronome.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_160401_277540_78B4AC02 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: fanc.fnst@cn.fujitsu.com, kasong@redhat.com, Baoquan He <bhe@redhat.com>,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 hpa@zytor.com, j-nomura@ce.jp.nec.com, tglx@linutronix.de,
 Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 02:53:52PM -0700, Dirk van der Merwe wrote:
> Where can I find the next-merge-window tree?
> 
> I can test against that too.

It'll appear soon in a tip branch. I'd appreciate if you tested that
instead - stay tuned...

Thx.

-- 
Regards/Gruss,
    Boris.

ECO tip #101: Trim your mails when you reply. Srsly.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
