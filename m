Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5EE1722B4
	for <lists+kexec@lfdr.de>; Thu, 27 Feb 2020 17:02:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QtsY7BT13Zdnp/yO9pkLlXgX+AJCZ0bYW76ihzhw2R8=; b=NALLQOmMD7P31E
	qVm3O/1iYBiteYXPc1RzJeA1hnA3SpgL0DUwBJMJKrXeOESdUSJey1/1DXZsMChtZ/iPqy7tFI78N
	CyadPvp4R7guGTHl9zpBh80P1Kk2TKj9nG+k8ORMRffU1avhI2XmLbE0HUN53NXpbZtJcAEbzoEGr
	PYeU8+rvzPDRnfqjslVJ/msjs7/NlUbSwkYLLyZviOktpQA++aQAs1TH8tOdGo35pbeq5/bDZzdnU
	MR43g23kW8I3iYJMQ5fEVbwEUDsuUn74gRhO9MLer8DoFZ39uzR7LdzjFFLfe8ZurWzkWdqbQSlMG
	TFMCKQYBB2PufEvbCZoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Lca-0002oo-2b; Thu, 27 Feb 2020 16:02:44 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7LcW-0002oJ-RX
 for kexec@lists.infradead.org; Thu, 27 Feb 2020 16:02:42 +0000
Received: by mail-pj1-x1042.google.com with SMTP id m7so3404143pjs.0
 for <kexec@lists.infradead.org>; Thu, 27 Feb 2020 08:02:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9WYvJWXMZ+rcEfofeSJpHlDz/l6UP/pgxaBPI0bVL+I=;
 b=Qsxn4Hk1uahykr+QWbXHItx2AejCBY1osUAbIGB78L1sCo7B6Il4l6DND0mh7bGD0P
 VEphLT6LKCT7GeIYw8JhWS4IdRBHN9OjLD6OTWcRutDRZdUgwuaqV/hwpz3zxaBidUgO
 ggRjZ0IGbj3DcO3j9UNLtGA9Bagw1dMPj4wqU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9WYvJWXMZ+rcEfofeSJpHlDz/l6UP/pgxaBPI0bVL+I=;
 b=swH127DuK+Jy0kPGAARpnuY8lUo4g2wqekC1V8oCDBy6CKD9QUhmGjpUXyzibhI2m4
 BjX95vMjcBUoPVNeYV0OTqQgDreXzTzVT6wQGR2kP2wOe0YTpzKNJOMTgqDUr+rycmql
 +1ZK2BkyNVoHOMoaAM+fhhqJVV7+zEe2/vcHHp/u8+GqrWjUTKuoI7Ynqr6berJexMj1
 X3Xwpe7NiVBanj1PqOE2LAEbaMKX8gGL6IKAtMfZZ7cFZXFa3Os5/DKjchD5sHR8mRLN
 EzaNwZdwb8nVLlxPpdnfng8wmoAjmuBXsM38guDdDXzm8CVX54+jj2tKitUpEgnt8Y6m
 FGxQ==
X-Gm-Message-State: APjAAAWl5guxB8bip5AKM4AH1GDvB+m2OKnv5dB9mqrZ41M8a/wXPFuX
 5lNut0zaFMGeWYfyfTbVO/Wkjg==
X-Google-Smtp-Source: APXvYqwuoISNzfA3MpWinuXHZq6onkj6FotCRgoAwXWcPcaWOvayXN9eZRYUoFiSP4YFJQB9lCtKzA==
X-Received: by 2002:a17:902:265:: with SMTP id 92mr402833plc.292.1582819359541; 
 Thu, 27 Feb 2020 08:02:39 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 5sm7682612pfx.163.2020.02.27.08.02.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 08:02:38 -0800 (PST)
Date: Thu, 27 Feb 2020 08:02:37 -0800
From: Kees Cook <keescook@chromium.org>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [RFC PATCH 09/11] kallsyms: hide layout and expose seed
Message-ID: <202002270802.1CA8B32AC@keescook>
References: <20200205223950.1212394-1-kristen@linux.intel.com>
 <20200205223950.1212394-10-kristen@linux.intel.com>
 <202002060428.08B14F1@keescook>
 <a915e1eb131551aa766fde4c14de5a3e825af667.camel@linux.intel.com>
 <20200227024253.GA5707@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227024253.GA5707@MiWiFi-R3L-srv>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_080240_916965_4FA7C01E 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-hardening@lists.openwall.com, arjan@linux.intel.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 bp@alien8.de, Kristen Carlson Accardi <kristen@linux.intel.com>, hpa@zytor.com,
 tglx@linutronix.de, rick.p.edgecombe@intel.com, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 10:42:53AM +0800, Baoquan He wrote:
> On 02/06/20 at 09:51am, Kristen Carlson Accardi wrote:
> > On Thu, 2020-02-06 at 04:32 -0800, Kees Cook wrote:
> 
> > > In the past, making kallsyms entirely unreadable seemed to break
> > > weird
> > > stuff in userspace. How about having an alternative view that just
> > > contains a alphanumeric sort of the symbol names (and they will
> > > continue
> > > to have zeroed addresses for unprivileged users)?
> > > 
> > > Or perhaps we wait to hear about this causing a problem, and deal
> > > with
> > > it then? :)
> > > 
> > 
> > Yeah - I don't know what people want here. Clearly, we can't leave
> > kallsyms the way it is. Removing it entirely is a pretty fast way to
> > figure out how people use it though :).
> 
> Kexec-tools and makedumpfile are the users of /proc/kallsyms currently. 
> We use kallsyms to get page_offset_base and _stext.

AIUI, those run as root so they'd be able to consume the uncensored
output.

-- 
Kees Cook

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
