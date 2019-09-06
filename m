Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7370AC026
	for <lists+kexec@lfdr.de>; Fri,  6 Sep 2019 21:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tL18tmspGF9ROJSrH5ZstA+rc9EL6tNtFSIy1BKEsGw=; b=A+AFFkyZEnx9E3
	d3Gq7r2IeyN6YO0PppnhEidZO+2jhzdx/6KfDR3ddUH5oIrpgdJJv8DM8toyYxYSaYLq0JPYQPzyF
	b8XsBh56Ts1COcfjIqmiS4jswNDQ3CerIfRbvUqym8q3/elaQBUUtKOaAdOOVn4q8XCjfNphi6LgR
	2AOEIYHkySMjsbkbEiNxFrieKDOb4kL9qOSznUdTFMLLgkd6ohCGxHQcYmYqSBUGnqtwT3wUrkSaB
	zOiOBD4d4uueoZ5kiE2EnAiloFbTqPT0cfXebslt7ez7+VMX5Idhay0coZy8xlebgalIpHrFoeRv7
	aGc2J2lAXlzFc+SBtejw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6JXo-0007uF-0a; Fri, 06 Sep 2019 19:05:16 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6JXR-0006VH-Js
 for kexec@lists.infradead.org; Fri, 06 Sep 2019 19:04:59 +0000
Received: by mail-ed1-x541.google.com with SMTP id i8so7193964edn.13
 for <kexec@lists.infradead.org>; Fri, 06 Sep 2019 12:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jojg3lt9aotJnGt5bH33wsrcyv/EEKP9KJRLMGkqesY=;
 b=LeW70Cwz4yP0y+LnTrM6vdUtvCMHjSw1acep3zXSJpi5BYck+TcuH8lwg6BFF+angS
 RDYMTGCVx+3iLx4bIRpfNA69sQlUdbjAfJrE1tIJt9h5xR7KlD59f1teg2zUjKLWji8U
 HtKOfDiAs4fvtxuIYAkhN86SzJ/3DECTbwuraae7Ro4Fnmf/j7wRycV3GekLevRvA4yi
 hN+l2NlmZ43f8LnS3649b2RQBq2URKwBrG03uECmpal6VX2gf/H7cIiJydxgVHNdAVEK
 ZsN2k2L3TJXN4FJXJv8Ww2KRqLaR8luX0x/QO6p8DnbYTUm/7XaIdegqHhHY71r0jRUC
 LkWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jojg3lt9aotJnGt5bH33wsrcyv/EEKP9KJRLMGkqesY=;
 b=nGniXPVYG2m7ZJre0q6/lsbMWhE34Kprfr5bg45xB08SOpsxmFSCeRtL3Hsr3otwh1
 2Zp8TToPnBarhGtWr3x+pJIw7nwjzVQ1ueeeB2gA0vnjjxoK0eq8m7NbWyLV1fj/gHBm
 70JqtpovFwzCZfYeqaFqmK3xLtutsgWH82maaGWC4oVEvRnDAW3fsMVPsWeGzQ93+fH0
 IVit8eJHM+lk6MJ6hG8f4CRCvkull9kIlUOWaID9kGzHLuPviN2fPi4HqZ/ndWbyHNDu
 FxZawqwCKOIEfyNUbMH5irJ2/aFc2pxcSL1STFxo009BYHqgQP6LOpCVVp5EZou1blpc
 vCqQ==
X-Gm-Message-State: APjAAAUhOqyAHfLAFczOtY8q4B0xOlV6cQfmMpdQmoOAs5U94siRnLKI
 aqgq5eKUIkgx/bcLrFEe7rKxvPhB7C7BLlbRQrifIQ==
X-Google-Smtp-Source: APXvYqyK1SCAqBB23XwDsQMDwIBa7uh8HdAPqm1/xVvjPDxouORMX2W/oKEVAMQ70bEUmrEuPn+OtVr0upjiCbgyF4o=
X-Received: by 2002:aa7:c40c:: with SMTP id j12mr11447072edq.80.1567796692440; 
 Fri, 06 Sep 2019 12:04:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-12-pasha.tatashin@soleen.com>
 <d53d973c-17dc-2f4f-c052-83d6df15b002@arm.com>
In-Reply-To: <d53d973c-17dc-2f4f-c052-83d6df15b002@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 6 Sep 2019 15:04:41 -0400
Message-ID: <CA+CK2bCSDEspfJZ9k_4nWmerQSatc9M_dVf4Jij5xUwTMbg29w@mail.gmail.com>
Subject: Re: [PATCH v3 11/17] arm64, trans_pgd: add PUD_SECT_RDONLY
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_120453_653508_9B10CBB5 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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

On Fri, Sep 6, 2019 at 11:21 AM James Morse <james.morse@arm.com> wrote:
>
> Hi Pavel,
>
> On 21/08/2019 19:31, Pavel Tatashin wrote:
> > Thre is PMD_SECT_RDONLY that is used in pud_* function which is confusing.
>
> Nit: There
>
> I bet it was equally confusing before before you moved it! Could you do this earlier in
> the series with the rest of the cleanup?
>
> With that,
> Acked-by: James Morse <james.morse@arm.com>

Will move it earlier.

Thank you,
Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
