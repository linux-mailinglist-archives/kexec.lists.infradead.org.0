Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C761CC3D9
	for <lists+kexec@lfdr.de>; Sat,  9 May 2020 20:59:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXhkusd7PnXhNEoQ1UkkplqujI5eCGcMuNrCvpr0pc0=; b=SmjzZ3zKUsDm2O
	+9IfMLwV9ZdgFhwOJy1ipCpalICSz1wBGiFyQnNdyloCedi/mbA3ZawQDhHe5VeBZbQBChutWDo3w
	Uun3UQKu0G1P9sZe82+niy1faUqoRi2gpPhvg8pHw8MyJxA/VyyDwrQ8EneULf2c38NHmLYjXNAzs
	wn4np+ZvQCOfW9e65umwUet/5hqVhGzttDvXPiiNbxCEj2dIReqyBtFsI+uD2yDgTHxgerfar8v7O
	PDG0XFHNaMkN/DDO+paaO5LwK/nsuTnFfHR/kSsA34rCYOfTRQGh6ypCM8viH2fvxIl7+w6+3JGAP
	vNix4a9IEQXl24Smr9XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXUgu-0000bU-OE; Sat, 09 May 2020 18:59:16 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXUgs-0000b4-1k
 for kexec@lists.infradead.org; Sat, 09 May 2020 18:59:15 +0000
Received: by mail-pj1-x1041.google.com with SMTP id e6so5739950pjt.4
 for <kexec@lists.infradead.org>; Sat, 09 May 2020 11:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=uk9SlQz0CEzsa9L5BG2dNiuhefw99CVH+DuavxyjFwA=;
 b=WpMlExT/LVZeacy+KQ32hrpYo3R8XLnZFgCb869aNV+iiJ4EApUMjwk4xusqybUsck
 IQsuT29KxtXyciI21GTLSAOx5ucTEuI1DNlfzz+U1uA4nl/ZYLB37ks3l7sCuyFgfsb7
 C39XCT5j6YqMLMPgPmiFNCU6Ambyi9SwoV1Zk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uk9SlQz0CEzsa9L5BG2dNiuhefw99CVH+DuavxyjFwA=;
 b=cJsaMi7HBFurf3jXDU8k1iLn6yvFchFzO3Y0uj8kg8muak20+Srjj4GMdFHK2sSEI7
 MX0in1w+8k3jVw4yGjeVq+f+rsvtG4eMXw17gkhkOQGUWdpnE9ONsu6P5GyKWgQJP6ta
 2Y/oydexwH0MESq69xoVE4XHW422ogIgHtwmJm+Gl9D5akvHHJqTQs+rBQP5XUviGRPf
 KqwWa6iLRk2yx0v+SoYvfbFNN1+OjVuz0lXEXlAouGjE5mtYKFrt5LfQqd059ic8Dqtc
 7eEoMeTe0MoCjjVGsGgLZk1OjNhxtwrBYyQufTfyjF7/cnsxDRKjRhFzw2HE501gWV2h
 Fozg==
X-Gm-Message-State: AGi0PuZrx+WEptJuwUxAS76kEJn3JyE0EVeNYMt26EHkPYS5C5LdCiVX
 SYLbqqbnshDij6Mf6M2gx8fF2g==
X-Google-Smtp-Source: APiQypKBNQXLzuVMARkaYrebfFtrKeGEowsUVjfCgRHf5JpipmwnEaSx8EB4o1ubtEkZ1ly+hXTS1A==
X-Received: by 2002:a17:90a:db0a:: with SMTP id
 g10mr13107736pjv.54.1589050752729; 
 Sat, 09 May 2020 11:59:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id j26sm5139846pfr.215.2020.05.09.11.59.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2020 11:59:11 -0700 (PDT)
Date: Sat, 9 May 2020 11:59:10 -0700
From: Kees Cook <keescook@chromium.org>
To: Rafael Aquini <aquini@redhat.com>
Subject: Re: [PATCH v3] kernel: add panic_on_taint
Message-ID: <202005091159.A317BEFF@keescook>
References: <20200509135737.622299-1-aquini@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509135737.622299-1-aquini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_115914_226881_A0EBF0F2 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-doc@vger.kernel.org, tiwai@suse.de, jeffm@suse.com, bhe@redhat.com,
 corbet@lwn.net, labbott@redhat.com, dyoung@redhat.com, AnDavis@suse.com,
 rpalethorpe@suse.de, jikos@kernel.org, cai@lca.pw, bunk@kernel.org,
 tytso@mit.edu, jeyu@suse.de, gregkh@linuxfoundation.org, rdunlap@infradead.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 torvalds@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Sat, May 09, 2020 at 09:57:37AM -0400, Rafael Aquini wrote:
> Analogously to the introduction of panic_on_warn, this patch
> introduces a kernel option named panic_on_taint in order to
> provide a simple and generic way to stop execution and catch
> a coredump when the kernel gets tainted by any given taint flag.
> 
> This is useful for debugging sessions as it avoids rebuilding
> the kernel to explicitly add calls to panic() or BUG() into
> code sites that introduce the taint flags of interest.
> Another, perhaps less frequent, use for this option would be
> as a mean for assuring a security policy (in paranoid mode)
> case where no single taint is allowed for the running system.
> 
> Suggested-by: Qian Cai <cai@lca.pw>
> Signed-off-by: Rafael Aquini <aquini@redhat.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
