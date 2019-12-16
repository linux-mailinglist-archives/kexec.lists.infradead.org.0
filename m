Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E342411FE91
	for <lists+kexec@lfdr.de>; Mon, 16 Dec 2019 07:46:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OsY8Mse3WyEf1Jsq+HTV6plwMnmCV8A4+RJm3mb9Io=; b=Km0q7OsHwZYRtL
	CuKQwOVkvZBSINhafMbVfV8m63P9sYpwGHFfoqkwidcXURuSDvfSElTypt0RLKV1BwkJmBUb3UWFs
	w5fW83zmJRceAU7cqHqppa+wOrJ2TvdTidFXjcrQsWjvOWJrKRmAlyXzE3Hi5q24hrGuWPIMwjuHo
	Y2JcBnDVF+ikUSWiSPrTTMYux4pgcKwauBgFYsgu0WpntdTdn5mx6yzNfwMQZ1dmMap/4X9O91qLw
	5lpREmoOTW9hVaVbsToZNYgkqReElf9dP8/qNPZadbeBnGxdYY3Zp33tvTdWbVvduVfHYfNoUQP1a
	6L53FucXbClwCzjcL7cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igk9W-0006mU-EZ; Mon, 16 Dec 2019 06:46:46 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igk9H-0006cZ-49
 for kexec@lists.infradead.org; Mon, 16 Dec 2019 06:46:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576478790;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uPUbX9Jz4xx+ZUII2dhvvUhvv4VHD3gib9TjJw4FvFo=;
 b=JAZpQAatARDnSnJGtyOLQu+QBPjhdyfrfwN3izcFNZy3dzwX+eTxBeHffuEHeLyQguwuUF
 mqV7CVwnFCkGh8YaxoqDXiFnwSOsgFyhL6/LhBLY2uAKpVNvO4xcZ4o6iNvjLR/shGSTXL
 0VWZQmz03976hbG1OtL5jQP+o71EOrU=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-RTsyKwMZNaOOHi_2nj_GOA-1; Mon, 16 Dec 2019 01:46:26 -0500
Received: by mail-lj1-f197.google.com with SMTP id 140so1789374ljj.3
 for <kexec@lists.infradead.org>; Sun, 15 Dec 2019 22:46:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uPUbX9Jz4xx+ZUII2dhvvUhvv4VHD3gib9TjJw4FvFo=;
 b=Ej/UMlk1wdG861qwspAm6/51fWlNijpR/rWJooLJNptKXhmyyattvfJa9xkX0eBod9
 SXOngSV8jsXxB57b66/yUfGOotrSqBnM+/oX+iH6f2BMwEY+xmgkv/63nlFdLif/O4t/
 Lv2VDHutAwGiwjUDmBfJoQ86EPzeO8qS7SAghhVV2UVU/pio1KbXwLXCt+X1a5l5naam
 8LKF3GjTMYSjjM2wnQLxmFlvgK1kfRk1a120fahdwSMqhhw78j4BwzmRSt54BwGmJHhX
 fTnXTAH5rwF8pL1MSMAAh93cXydHSLzwFUCDJZIGy8KAUxBmq9RynTx108ln/gNyj+/E
 7uLw==
X-Gm-Message-State: APjAAAVksge7pAEkEc0x1Nux6KsuiWBJ3/qj/iWrgNYjplV7YLyK6RDB
 XZLu39OGj5hCo5ElNT344zOc+ufEWYUHBxqorCbf/vKyoXOcs9Jsk1CAzRKGq9Hrb8o1EZT9vzX
 1nIv+UfvHbf5iEnsBq6btKYmkM8NjQhR62ZI1
X-Received: by 2002:a19:f619:: with SMTP id x25mr15220130lfe.146.1576478784854; 
 Sun, 15 Dec 2019 22:46:24 -0800 (PST)
X-Google-Smtp-Source: APXvYqxYIqap6RvvS/V3qRxs6d85Vgoutpx8l9xgfgCmVn0EpC3k91P2m6SYYYdmxGiRTrSSf+TXl7Fnv3bF7BQRunc=
X-Received: by 2002:a19:f619:: with SMTP id x25mr15220124lfe.146.1576478784677; 
 Sun, 15 Dec 2019 22:46:24 -0800 (PST)
MIME-Version: 1.0
References: <1574972621-25750-1-git-send-email-bhsharma@redhat.com>
 <20191214122734.GC28635@zn.tnic>
In-Reply-To: <20191214122734.GC28635@zn.tnic>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Mon, 16 Dec 2019 12:16:12 +0530
Message-ID: <CACi5LpP2PPcmaQw95V4MUzhvENq9+mB7UR7eib2HADCDHLz4oA@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Append new variables to vmcoreinfo (TCR_EL1.T1SZ
 for arm64 and MAX_PHYSMEM_BITS for all archs)
To: Borislav Petkov <bp@alien8.de>
X-MC-Unique: RTsyKwMZNaOOHi_2nj_GOA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_224631_238245_C6700A46 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Dave Anderson <anderson@redhat.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Will Deacon <will@kernel.org>, x86@kernel.org,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>, James Morse <james.morse@arm.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Catalin Marinas <catalin.marinas@arm.com>, Paul Mackerras <paulus@samba.org>,
 Thomas Gleixner <tglx@linutronix.de>, Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 linuxppc-dev@lists.ozlabs.org, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Boris,

On Sat, Dec 14, 2019 at 5:57 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Fri, Nov 29, 2019 at 01:53:36AM +0530, Bhupesh Sharma wrote:
> > Bhupesh Sharma (5):
> >   crash_core, vmcoreinfo: Append 'MAX_PHYSMEM_BITS' to vmcoreinfo
> >   arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
> >   Documentation/arm64: Fix a simple typo in memory.rst
> >   Documentation/vmcoreinfo: Add documentation for 'MAX_PHYSMEM_BITS'
> >   Documentation/vmcoreinfo: Add documentation for 'TCR_EL1.T1SZ'
>
> why are those last two separate patches and not part of the patches
> which export the respective variable/define?

I remember there was a suggestion during the review of an earlier
version to keep them as a separate patch(es) so that the documentation
text is easier to review, but I have no strong preference towards the
same.

I can merge the documentation patches with the respective patches
(which export the variables/defines to vmcoreinfo) in v6, unless other
maintainers have an objections towards the same.

Thanks,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
