Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8C0AC02B
	for <lists+kexec@lfdr.de>; Fri,  6 Sep 2019 21:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vLJlRGXG8sepqJeeq7ufMVqbFx9sxzKedmxs1geq/Dk=; b=b50nWUFpkCmOCI
	8Wyu2R/glysWwERs4WTPtT4j1bNRhM83cXvJn0yhtY8ot5WcuQjQRtoWQianH3pBi9Gx6/KIWjekn
	3D+sIpwQZREpZ8blIs8QzG7LC+hqSCMpIasPnDA4QL8n77nmMZ3hF81ARtkzz4Ixx4Z82SezVr+ue
	9hdVMRQwHbsjRkLBRU9n9eyGt9YIfOSbIaKIzGGMIgXL/n77ukmmM6gssZjCgO9cfo/LVeqGMDBMt
	B2JBnJRmwap/MyrTg4Ibes5b8Xuojc4+l7PCIgXoAt6kVC6yAXtyvYsrFbGTM1O/qZfKxyPTfk5jh
	EKOdjDLNI06wkggQwmVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6JZL-0008DA-F9; Fri, 06 Sep 2019 19:06:51 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6JZI-0008CS-GZ
 for kexec@lists.infradead.org; Fri, 06 Sep 2019 19:06:49 +0000
Received: by mail-ed1-x542.google.com with SMTP id f19so7207459eds.12
 for <kexec@lists.infradead.org>; Fri, 06 Sep 2019 12:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y2omJ3/dD4U+vCtoy8H75XszRI5XH+eQMkgkdDPlArY=;
 b=FQTP/TmgHTgyC+PBU5SEyiseIy1zvJC97N+VhKG2dCvL9vAhP80LEhoKJOvzIi6bLQ
 BgVBFgf58SS8R6ppJO3IlLnneB06um+xoINkqVeAcoexAD7EM8Pa8+VTq2HkDgPCOmt1
 TOn3ZhGsy7GLjFuJ1Jsk7gydcJxrPs9xEq3rZGr9mprwu/oe6WREKg8EsucNQZWw2j6w
 J7ifMbBwHA1GZOQh8cnKXT8qN31F/vuBtp4u7YqNI+J47VPkt/zp22gNmPCRdoGMqBlZ
 nVh7RyWgx3VRI12mKbkkekJb4SMfWKAg2SUtXlgb9KFbdoDmStmdx61Q+ALcL6DiU6Eb
 OcSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y2omJ3/dD4U+vCtoy8H75XszRI5XH+eQMkgkdDPlArY=;
 b=Pv3ZlBv2PiD7iddBfuwAA8n6pnOmXhb0LlLzFqX8m59488YKO4zjTyNIh3kYRcLAii
 NpFQRVTNd6809Ayw0FIDrmlqCRpp7nARS98X9/eUALzj8NXH+2+W2/cCkBNlPWS4biDP
 jst3O1T2A2c9eUq+AlVAXayQdN8rV9RrWZRxFHbdANvHtD+Rf5Pt0XSrQGSfgjZ7cTEK
 zSFd1Oyi0e6Zlbapg2GvfqzGMcAGtV14kKn3rfhT6yAwo0PHBFoIMvrZxRDU1vhXeTZm
 tMVIlpgNn4QtPcSpL1QU9SCBmbHdjf5kJ/mPGgkUo0UJmq1L4fMISFlklSBzNYaadxwB
 S/Bw==
X-Gm-Message-State: APjAAAXeI39zBlnK5twT6LBSSsRzwlx2uvPZMuA2Ce8+wrg+Ln79KpYc
 S72ySeIc7xFVf1L4BwQm41512kFABlN3Vh9rFoyF9w==
X-Google-Smtp-Source: APXvYqxUyzboKtZynQf94VQal3O7BvvXwmvhzJw991UoDJCeN6nT1tLn0eiUP2pwGueZpl557B6qG/MIy5a1dR+RLhA=
X-Received: by 2002:a50:9ea1:: with SMTP id a30mr11569826edf.304.1567796807172; 
 Fri, 06 Sep 2019 12:06:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-13-pasha.tatashin@soleen.com>
 <d4a5bb7b-21c0-9f39-ad96-3fa43684c6c6@arm.com>
In-Reply-To: <d4a5bb7b-21c0-9f39-ad96-3fa43684c6c6@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 6 Sep 2019 15:06:36 -0400
Message-ID: <CA+CK2bDxK5DHARkAUxzodhMDqokqEy3Y12F-bgHPF9g9K496hA@mail.gmail.com>
Subject: Re: [PATCH v3 12/17] arm64,
 trans_pgd: complete generalization of trans_pgds
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_120648_556624_E8A1D596 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
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

On Fri, Sep 6, 2019 at 11:23 AM James Morse <james.morse@arm.com> wrote:
>
> Hi Pavel,
>
> On 21/08/2019 19:31, Pavel Tatashin wrote:
> > Make the last private functions in page table copy path generlized for use
> > outside of hibernate.
> >
> > Switch to use the provided allocator, flags, and source page table. Also,
> > unify all copy function implementations to reduce the possibility of bugs.
>
> By changing it? No one has reported any problems. We're more likely to break it making
> unnecessary changes.
>
> Why is this necessary?

I tried to make it cleaner, but if you think the final version does
not make it better, I will keep the current versions.

Thank you,
Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
