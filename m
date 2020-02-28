Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D171730F4
	for <lists+kexec@lfdr.de>; Fri, 28 Feb 2020 07:23:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWY9lXINQkOMiChzI6VErpaIvmrllhl4PsIhXUyYP2g=; b=RSAHsD/0o6EnL6
	kZKPwGcYTfz85wvUpIZJOoYJdw9gBiXdChqqFdrdSHcTSQOnXB/kBnO5C/iaBU1OHdH2BTuxTH0Lb
	YTB+fxBebo+dFizVTfDvLaXmYGV/Rvsf/HZEHtxA2gDwaFgHLEUWSckNoTJE/83i9S/m6ZdU48ZLV
	dWSjmc8B+CcT4u3Bf+jafSIK1RILNV7U6+n38o5KwYwkQW88h1AqX1yMXOLDk2dfV0ctprx575o/v
	9ui98r4jftgXlT3j8HwOb6E7UzPy3EnglevRobqkPCQ9kjkbtORyPfLh9Xvbo8fG8whu20A2qthdy
	9FH/72DFhE1RMMffW+hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Z39-0004wO-JF; Fri, 28 Feb 2020 06:23:03 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Z36-0004vx-Mi
 for kexec@lists.infradead.org; Fri, 28 Feb 2020 06:23:01 +0000
Received: by mail-io1-xd41.google.com with SMTP id z190so2287116iof.1
 for <kexec@lists.infradead.org>; Thu, 27 Feb 2020 22:22:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DuTOFF1N+0jfCoOnm+K9/yIAbEzJTEhAb8FgQMl5RCs=;
 b=aCiWPejfRtg4tr/zyh+vkBP374VidOeRRwL5P3kwIVoUhl1AVb37179on4ut47TkCb
 DKz2nqNbszQLSWBaCEza/YuWnhzwIbDSoGDzGI1dGN/KkVRtprqStaildf5CynTPB8YH
 wWrZCFnw+kibmyolcpZZYPNNKS+ZXDULutHc8q8JDhxLJP9s2QzQ0O4cxF6DY7vtUyhT
 TO5Ehg4u2z1pEYM09PHTSN+6zF8/X5YUKSAZPnZWLUUMnXRwSsoyTl9XxKS+60Xtzbea
 99eBpM/KFox3b8zaKlNbJI4xg/3C1rbHV/+tDaAbjvg6uFNyom1G6qch1ER5NUPcpsUz
 lHmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DuTOFF1N+0jfCoOnm+K9/yIAbEzJTEhAb8FgQMl5RCs=;
 b=KtTAp9+V2sy+sLKB74z51EvaDoauFXaEkldJtYZzAHN5Vv7DF16TPtIELGpPzub8mR
 8lhDz/g7TwlFO0o+IhvsM+9XWiYuoUXbxFRofDB2gO8hGXwxA+iLAePLSGLOAowiXnGI
 mZnWEQ9Kb11is1liTT44HNKxH8n8CuTzpNFDbLHi5MTeRrLK6i9OIg3/BKL7EcfCn3m3
 afYtNZC+0uZXVaQ0yUbeAiqUwZS2rmqln2tlwWMsllocGAlPh6uwkSNypv7asKLtoRqe
 1pnb9TzuaMgobRwSPvTU8ixtuEtBZbig7Ge6+NFiuVE723rcOFecbZuib1+e9mH4eJP+
 7PPA==
X-Gm-Message-State: APjAAAWCj/3vBNw0/5gJ0jVLICgbRV0o7Anh2oVil0vOenncjVI89k4G
 Vwz88AlCVuTSCKKisHuM7Zi4CnhGHQWUtS/A0A==
X-Google-Smtp-Source: APXvYqxHE8gWaNcZZa2L+3c0huHd3lfG7kjSTtYKOvlbqXd27L5SYx1pvP6W2T2x6f4TjIpqv1ubeL/97DgpQVFxGmE=
X-Received: by 2002:a5d:8448:: with SMTP id w8mr2484449ior.161.1582870979227; 
 Thu, 27 Feb 2020 22:22:59 -0800 (PST)
MIME-Version: 1.0
References: <1582869192-9284-1-git-send-email-kernelfans@gmail.com>
 <44745496-9d30-45cb-b67c-0ca283c4c90d@linux.ibm.com>
In-Reply-To: <44745496-9d30-45cb-b67c-0ca283c4c90d@linux.ibm.com>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Fri, 28 Feb 2020 14:22:48 +0800
Message-ID: <CAFgQCTuFGMHw+9vr5ZCJ_vRTEAtHFTu+Trq=vMrnq4t+OU=_EA@mail.gmail.com>
Subject: Re: [PATCH 1/3] powerpc/of: split out new_property() for reusing
To: Andrew Donnellan <ajd@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_222300_768748_E220F61F 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Oliver O'Halloran <oohall@gmail.com>, Paul Mackerras <paulus@samba.org>,
 Dan Williams <dan.j.williams@intel.com>, linuxppc-dev@lists.ozlabs.org,
 Hari Bathini <hbathini@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 2:03 PM Andrew Donnellan <ajd@linux.ibm.com> wrote:
>
> On 28/2/20 4:53 pm, Pingfan Liu wrote:
> > Since new_property() is used in several calling sites, splitting it out for
> > reusing.
> >
> > To ease the review, although the split out part has coding style issue,
> > keeping it untouched and fixed in next patch.
> >
> > Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
> > To: linuxppc-dev@lists.ozlabs.org
> > Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> > Cc: Paul Mackerras <paulus@samba.org>
> > Cc: Michael Ellerman <mpe@ellerman.id.au>
> > Cc: Hari Bathini <hbathini@linux.ibm.com>
> > Cc: Aneesh Kumar K.V <aneesh.kumar@linux.ibm.com>
> > Cc: Oliver O'Halloran <oohall@gmail.com>
> > Cc: Dan Williams <dan.j.williams@intel.com>
> > Cc: kexec@lists.infradead.org
>
> Which tree does this apply to? I don't see a new_property() in mm/drmem.c...
Sorry, there is mud in my git tree, I check, either linux git or
powerpc git tree does not have this function.

Nack this series, and I will send out V2 for patch 3/3.

Thanks,
Pingfan
>
> --
> Andrew Donnellan              OzLabs, ADL Canberra
> ajd@linux.ibm.com             IBM Australia Limited
>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
