Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA453B3DF
	for <lists+kexec@lfdr.de>; Mon, 10 Jun 2019 13:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUznyYokwueiea3bXgVW9s6Xeb1PfuVoiQsuPVec8oM=; b=bnehhA/pEiU2YQ
	W2jB/IDbXGq8tCXnGEOGMMRZ83Ds4MdGvigY0i9avE5Od+qDOZ9EtHTB99WmoncEOu80zHcuzzreL
	kc0NKBwCJuEZG8XlJ09mW6PgxNZZMSXF7m3prRcHqQDtRAwgSe8Vo+WLOajpp30OjiOBWcQZ7X3jP
	M1S1TwmxM+dM/RJZW5VDhWttijnBY8X6c5W5HLrV+VdVHFmGowqUx8VwVo7E852PKGEgrOckHXsxG
	/INhGlYvQ8fTPeEOF942kgTgHx/wMJkHAwfn5eWM6TYuvc4NkXpef26DsSwDuj2Wo+w1dLqug6Itv
	q0yj5DeVKk300kFSEkkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haIHB-0004uO-5C; Mon, 10 Jun 2019 11:15:45 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haIGq-0004j1-Qu
 for kexec@lists.infradead.org; Mon, 10 Jun 2019 11:15:26 +0000
Received: by mail-lj1-f195.google.com with SMTP id h10so1665735ljg.0
 for <kexec@lists.infradead.org>; Mon, 10 Jun 2019 04:15:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SfxM0MNNGeeWbqtads2f1ME1VOG/Aj6l8MDO5yfiWbE=;
 b=j2OMU4IuDrzhMLkwpKYDl5WQ0AdmfcwakR/vzyBMkP2F+lubfx/kAdSgu4yXlKfmtu
 a302nCJq3AVUTACsAQHfUTvmGg5yEmXBAr2xwZTmEYM0JKYTHloWGgAQ+n0wDxhUyLwY
 jXYE3Q7cq58GWYAYlY9seC780JJ1chjFjf8abbKN8D/TczO9GcVb6+W1v5p+cnr1NnzD
 g+KPYPsCTFIYPMSvoLwubTf/AseoBfbQdzpnpRlcT6AizjarBQLmKr7l18/3fCzBLFwl
 /2DUo2YU2f7zmOPuEaYERfRFcH4PxZbsC9oJhD1jlbU5O6r4wJEIAsvX4Sq8rYgqDhRE
 6izA==
X-Gm-Message-State: APjAAAVHv8J3njcl5AIKo3TIqxujN7hz7sC9Mi2Td7zZQ661gFxEUeC/
 l6Afp1xtVa7jIrQ7oDyeYpYxkNkD1KeIyZB07B7p5w==
X-Google-Smtp-Source: APXvYqyyiM5ns67LDipiZNn5s1xfztrTGt7GU1FcOcz5XuRyxGBFWbTi8d6ThIlPuDUIBspZrP9aFHRQVTxlFFvhIq8=
X-Received: by 2002:a2e:6545:: with SMTP id z66mr36732710ljb.146.1560165322896; 
 Mon, 10 Jun 2019 04:15:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190528161026.13193-1-steve.capper@arm.com>
 <762411c4-1148-a10e-2a79-d2c9e38bc46e@redhat.com>
 <20190610105425.d4vubtcknc2wn5uk@mbp>
In-Reply-To: <20190610105425.d4vubtcknc2wn5uk@mbp>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Mon, 10 Jun 2019 16:45:10 +0530
Message-ID: <CACi5LpMpyNWEoX8oR-YpjDjO9XkvaA3KYiivozm=0hT+hkQ5sw@mail.gmail.com>
Subject: Re: [PATCH v2 00/12] 52-bit kernel + user VAs
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_041524_871158_B60213F0 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
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
Cc: Christoph von Recklinghausen <crecklin@redhat.com>,
 Steve Capper <steve.capper@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Catalin,

On Mon, Jun 10, 2019 at 4:24 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Mon, Jun 10, 2019 at 04:10:50PM +0530, Bhupesh Sharma wrote:
> > On 05/28/2019 09:40 PM, Steve Capper wrote:
> > >   2) How can this memory map be advertised to kdump tools/documentation?
> > >      I was planning on getting the kernel VA structure agreed on, then I
> > >      would add the relevant exports/documentation.
> >
> > Indeed, in the absence of corresponding changes to the Documentation
> > section, it is hard to visualize the changes being made in the memory
> > map.
>
> We used to have some better documentation in the arm64 memory.txt until
> commit 08375198b010 ("arm64: Determine the vmalloc/vmemmap space at
> build time based on VA_BITS") which removed it in favour of what the
> kernel was printing. Subsequently, the kernel VA layout printing was
> also removed. It would be nice to bring back the memory.txt, even if it
> is for a single configuration as per defconfig.

Indeed, that's what I suggested during the v1 review as well. See
<https://www.spinics.net/lists/arm-kernel/msg718096.html> for details.

Also, we may want to have a doc dedicated to 52-bit address space
details on arm64, similar to what we have currently for x86 (see [1a]
and [1b])

[1a]. https://github.com/torvalds/linux/blob/master/Documentation/x86/x86_64/5level-paging.txt
[1b].https://github.com/torvalds/linux/blob/master/Documentation/x86/x86_64/mm.txt

Thanks,
Bhupesh

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
