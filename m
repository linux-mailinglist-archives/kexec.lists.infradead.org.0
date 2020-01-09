Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C9813611D
	for <lists+kexec@lfdr.de>; Thu,  9 Jan 2020 20:33:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4WHKZbu+t96+02mIX27MZxCC0X7+Ixca8bkIKiRUftg=; b=ogh/8u0zW8bydc
	8ZMzaMnCOsbim0GJtpWGxoiHVsJ177z20ijh1DNB4lLurpC9bSNWUL5Ja0VCAmL05PnBAcV3d7dqm
	pikyMwf9/5o+uHiuDis8z9mjNUqrBLlqqSO32hSLSxCRLhXxH/Os4vmE8BhRK14YnAl2yiLD4aGIR
	PqLzjbkdKqkIY2jU1hKmjfbPAk/mLd6IV1RLoEjSuThT2COrJSd/nqk7KpLbeMnHZUQZhcPO3oQ+M
	xMZqugJxDWvtaymWMU1DrgGVozbUdvsDcN2YPhofdSXZlK5L4dmeX2cS9hdQOv1aovDBPoGhZHTin
	u12wlWEJ2F4rEzwesliQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipdYH-0001mD-3K; Thu, 09 Jan 2020 19:33:05 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipdYB-0001jj-Be
 for kexec@lists.infradead.org; Thu, 09 Jan 2020 19:33:00 +0000
Received: by mail-ot1-x343.google.com with SMTP id w21so8420880otj.7
 for <kexec@lists.infradead.org>; Thu, 09 Jan 2020 11:32:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=15Z89BEz3MyoZ6v5HIMpK8EJU4eXUmvvtENLzMT47po=;
 b=dV4vHbO3yJC1YETzxVL8c6ZqJvPK9/XcK4jmRax+j7rcA7nRe6Tg5p7OfTgAMVhZxj
 e5Z5Wz8HFFnS/PXc5hVscrwiMThqKeZZ1RlE97vx/ne+T3jFL6xiKrKa7+wn04fW3D8P
 4HxzwPNHX2cV8MwihYbe3NTfU6UU+isJM2TQyQx0nsSf8MLY4U00rc5+n0z0LxSifQ49
 lpG9eFHrMCgEfgnF+hQ9i4kDziMqVe8WLeI9l/ve93HrMOh1zJ737sTQeqUZ/ZA0uVYI
 iD/QwSOGX7LLSmYE2fJ9xkCp4ULxjKOvURfi9psbijceK5Bpevv4hGaK622MC6wVDylv
 X3EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=15Z89BEz3MyoZ6v5HIMpK8EJU4eXUmvvtENLzMT47po=;
 b=qG0obiox4axBJME4yLAANYpUXfsUIcMuCyqyUBo+UHg+zk+wo7BrF2A1svNUYI2iwc
 3AYh8SBWS0tyaXJWh4OLQ51yBvRCY7SOyaewd2AwlBb3Nqxij2QF9woaAnaZTqbSorQV
 atDaZSMkCfSTIbPJqEhtqg49pnSqOzg5ycf53M/wi/AMHVcLif0pjzHKDutxdkYFOTWB
 Sa/R33mfXB4w1+48PEpkLeQ6dgvYG6zg7ejJwP98qUArbEuVNQa5IgwYaP2WVUJ+g6XG
 ErOpQheydu4a2VYvRPY5lmRv4Uy8/Al/kiNAYrrcAul7Fr/fli/gYSKNaXyt+QFt0QKk
 FhpQ==
X-Gm-Message-State: APjAAAWKNaCT96tAwlqZey7QSUnBkImvvVGkeLJ11xtaVsK4E1cZdRnk
 iqKBjiJ0H+26V7k1SLS/Xsk1RCP+ieHo/cCD8v45Yg==
X-Google-Smtp-Source: APXvYqwP3eFYrodvtdZcfAfAqu8xqamJQA9sIs1h0qRh427F+yfPvleK68+NS8Lx2t66bO7knqd07EAla5mtgaQWbio=
X-Received: by 2002:a9d:4e99:: with SMTP id v25mr10115311otk.363.1578598377813; 
 Thu, 09 Jan 2020 11:32:57 -0800 (PST)
MIME-Version: 1.0
References: <157835762222.1456824.290100196815539830.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157835764298.1456824.224151767362114611.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200107040415.GA19309@dhcp-128-65.nay.redhat.com>
 <CAPcyv4g_W4PoH6Wfj_SDGzGLpNLwxtoeGP7uwpzVMS4JWbXSTg@mail.gmail.com>
 <20200107051919.GC19080@dhcp-128-65.nay.redhat.com>
 <CAKv+Gu-djB=3zTxjEbyjJXXpw=8NE6YA82hMW-JYyAQ2TSywtQ@mail.gmail.com>
 <CAPcyv4ixPchDOet=ztRQxLMgnJf9DauSFgBs3+TEoaua7R1s_Q@mail.gmail.com>
 <CAKv+Gu8W_EyMNAtDG6zK+dKRcaUEzeJ3fmPAiASdqatD3ewQJQ@mail.gmail.com>
In-Reply-To: <CAKv+Gu8W_EyMNAtDG6zK+dKRcaUEzeJ3fmPAiASdqatD3ewQJQ@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 9 Jan 2020 11:32:46 -0800
Message-ID: <CAPcyv4gjLaDgV0rVttrWHivkzPJ+-OesT3srNomENmT8_FhmFQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] efi: Fix handling of multiple efi_fake_mem= entries
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_113259_533598_085618B2 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michael Weiser <michael@weiser.dinsnail.net>,
 linux-efi <linux-efi@vger.kernel.org>, X86 ML <x86@kernel.org>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Taku Izumi <izumi.taku@jp.fujitsu.com>,
 Thomas Gleixner <tglx@linutronix.de>, Dave Young <dyoung@redhat.com>,
 Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Jan 9, 2020 at 1:36 AM Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
[..]
> If it's just for the comment, I can just slap that on, as I already
> queued the patches with the fixes tags dropped.

That would be great. Thanks Ard!

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
