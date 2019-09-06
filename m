Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB6FABCD3
	for <lists+kexec@lfdr.de>; Fri,  6 Sep 2019 17:44:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lenIvpX2nkQqQslHRifp5WxlQtlZQizmOXrGmoIGxxI=; b=CiY3fs5eGpy5eV
	Lm8MKY7uyaLoUMf4Fav+fWpLvInqro4iwWVF6wkW+iRomej39wSrEOHOyDnM0ycFrDgPTIj6Vk23K
	TsTFJONnAO/OfYrL19hfCh0oWJCJQwx6XDuKWOQeCz7Dp/I2cQXl2nX3MSG7UnJ9U0pF1lft+4YAZ
	EdQuTqN2cyRHRQyh9CW3sYNhgmVR2a4ft4q3zq34XDPHfniSqfLO7jFPEzBBSiZVDyrAUyicELF15
	/kDlvUAnFVNTV3zTrnGQWPJ1XtuUPxMB/FDPWJ/EynncFbpGOH4JWHpHuVyq9tG5Y74/rtfKv1YjN
	Y3dLxNDKKacO4zr8QuFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6GPd-0007ka-8s; Fri, 06 Sep 2019 15:44:37 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6GPP-0007aX-1S
 for kexec@lists.infradead.org; Fri, 06 Sep 2019 15:44:24 +0000
Received: by mail-ed1-x544.google.com with SMTP id i1so6719820edv.4
 for <kexec@lists.infradead.org>; Fri, 06 Sep 2019 08:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UXzffckHlrDd2GxMkcUegpxPLxQbezYI5SKZXnOnJzk=;
 b=GOMgzAf/lkF5c2eKwXgjCw9a3KXnWR5APRE7h0mk6NdXu79AGiO8sODfHid9N6Xl5h
 M/C8KT/SLLU5H1Aqg4nwEKOuTu5OkbyrUQJTErU8uVcm673iUBJEH32XMXPStUacK9QI
 xCMSuQrJe1j8CHQBTWz9PB+Jomp1+g+QD9Tkd9KMYHmJWFzG5xyCzw8xyfNgbLXZwkrs
 5FlS9o5FS4p8okYBPzuG2ITgzJGemxFxUkm3aSbDG/x0MDmUmazIm6dOMXX9j66GMFk+
 3cLHZkaYpm/muQI+jLdcObCu1m/ydijbn1wGNoRDjuAv/Fx5CRGdTNnFLVIVNVPLSSN2
 qWrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UXzffckHlrDd2GxMkcUegpxPLxQbezYI5SKZXnOnJzk=;
 b=squx9unAx2sap/2OfrOKSScUCvcJkg9BzCaxFT/r/nVstOJQaOKJ3eOWs+yCNpHQy4
 1pCB+DGYG1IR/wee4rtUhOFVOjSRubZZq+bS/7/UtVqec6Vmi73/PgaKPY/F8XAslzDb
 q6LxEvlHvTTRlqBAQx7zZUk8DSRlPcH2HWhzOBd3lhuvH4imeaze13Krnax+gWFs86GB
 sB6hpWzJgf1fxttiQQZQp5WpwmS+UXmEHlBI/jgK3kskXQ5igvgaZylQRsuuToajaznG
 Oh4X8R0wMSXzIUihdXRIpWqsyPtayvyfFYB/9bjtd6NTgmCgvZWcV0FTSaDjusxW512P
 x0lw==
X-Gm-Message-State: APjAAAVDC1JrulzGO3UiLC/zbEQ/QuYjCxCc5EBQHZ5dy1ZwWrX1hvtp
 1vbQ/BYb30grmSATicOmm2HpUUkUX4tTe3JZawPFvA==
X-Google-Smtp-Source: APXvYqwplMA0AW8lXkCWQuG9K8cCsGpwcuOwcj3r1h53xYTkZkNhYGGnMNAxboAR+e2euONipoiDRfZvyN8jJZQFWsM=
X-Received: by 2002:a17:906:f04:: with SMTP id
 z4mr8127839eji.209.1567784661783; 
 Fri, 06 Sep 2019 08:44:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-6-pasha.tatashin@soleen.com>
 <ddd81093-89fc-5146-0b33-ad3bd9a1c10c@arm.com>
In-Reply-To: <ddd81093-89fc-5146-0b33-ad3bd9a1c10c@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 6 Sep 2019 11:44:10 -0400
Message-ID: <CA+CK2bBXfa0MFspOpWAGL4Q7iYH9UMdKAwMD-PyL7Wp4s64x+Q@mail.gmail.com>
Subject: Re: [PATCH v3 05/17] arm64, hibernate: check pgd table allocation
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_084423_080453_C538E8E7 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 11:17 AM James Morse <james.morse@arm.com> wrote:
>
> Hi Pavel,
>
> On 21/08/2019 19:31, Pavel Tatashin wrote:
> > There is a bug in create_safe_exec_page(), when page table is allocated
> > it is not checked that table is allocated successfully:
> >
> > But it is dereferenced in: pgd_none(READ_ONCE(*pgdp)).
>
> If there is a bug, it shouldn't be fixed part way through a series. This makes it
> difficult to backport the fix.
>
> Please split this out as an independent patch with a 'Fixes:' tag for the commit that
> introduced the bug.
>
>
> > Another issue,
>
> So this patch does two things? That is rarely a good idea. Again, this makes it difficult
> to backport the fix.
>
>
> > is that phys_to_ttbr() uses an offset in page table instead
> > of pgd directly.
>
> If you were going to reuse this, that would be a bug. But because the only page that is
> being mapped, is mapped to PAGE_SIZE, all the top bits will be 0. The offset calls are
> boiler-plate. It doesn't look intentional, but its harmless.

Yes, it is harmless otherwise the code would not work. But it is
confusing to read, and looks broken. I will separate this change as
two patches as you suggested.

Thank you,
Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
