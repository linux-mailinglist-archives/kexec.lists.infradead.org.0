Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 782CC10A900
	for <lists+kexec@lfdr.de>; Wed, 27 Nov 2019 04:06:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSzF2FZwuQ3WrdPMLIJUbvXLoV5uFzTrhxeNmB2YZms=; b=jmCULWALKGUPX8
	rh4L3AQRG94u76Uwi5wky8c4oz31Izs/FJ0KgmDpepbY9mL+VBtnksuwj3FyvYfR5hclzsnFfiGlq
	QiXG+bbhKLJcqchx7yRWj/aGd+sHhQUKZ5LBfBVcjnXZLjBCgYBiD7UT36x9smJdJOeoQf/Xx3HGo
	ROQvLA/+eQ94ZgnH40dmdnbTyc6wHdZiEM315s/Gg93QZ2PoGJchHOKdRSDaWotlwnbTCd6JEygdG
	xPr0+7NFfhNDN+v6UwrQcWq2eTlEc3Sm9lacS3iAeDOLEaKAgIwz33qFzKP/WclUZ2EEL4WPgENu0
	zuNwXA/4hft5ta6uw6Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZnes-0006SH-9o; Wed, 27 Nov 2019 03:06:26 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZnen-0006Rs-NE
 for kexec@lists.infradead.org; Wed, 27 Nov 2019 03:06:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574823977;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cZomvDsVl2WY77hfsKUxI/gA/VD/+SLZozTzaEQbHLI=;
 b=fATX9m3TUij5ZzJzPrNTluzv/15whlplqXzmG40IY/1V3uTO7dtp1T4An08s1J1JjSgOVb
 bf+3Xm5SvQsz343AUttFLzjXBMG468gbNsjzWALLSKfjdKS7p/HgC1UvXOUH+Pp/taMkv7
 gni8zZUJfHz1tEOU+7ElS/O7bgdqdQg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-17-EB6XjJvzM-WZsGVasC0RTg-1; Tue, 26 Nov 2019 22:06:13 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 49EA51801B9C;
 Wed, 27 Nov 2019 03:06:12 +0000 (UTC)
Received: from [10.72.8.19] (ovpn-8-19.pek2.redhat.com [10.72.8.19])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 60F075D9D6;
 Wed, 27 Nov 2019 03:06:11 +0000 (UTC)
Subject: Re: [PATCH] fix bug in is_dumpable_file()
To: kexec@lists.infradead.org
References: <1574133077-5436-1-git-send-email-piliu@redhat.com>
From: piliu <piliu@redhat.com>
Message-ID: <8eea60e3-8e45-dee5-12bd-645aedc201b5@redhat.com>
Date: Wed, 27 Nov 2019 11:06:07 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1574133077-5436-1-git-send-email-piliu@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: EB6XjJvzM-WZsGVasC0RTg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_190621_884003_4B505107 
X-CRM114-Status: GOOD (  18.84  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

NACKed by myself due to a misunderstand of the code.


On 11/19/2019 11:11 AM, Pingfan Liu wrote:
> is_dumpable_file() is inconsistent with write_kdump_bitmap_file().
> In the former one, bitmap->offset takes account for the header. But the
> later one does not.
> 
> It makes things more mussy where info->bitmap1/bitmap2's offset do not
> account for header, while info->bitmap_memory does.
> 
> Making all of these consistent by not accounting for header.
> 
> Signed-off-by: Pingfan Liu <piliu@redhat.com>
> ---
>  makedumpfile.c | 5 +----
>  makedumpfile.h | 5 +++--
>  sadump_info.c  | 4 ++--
>  3 files changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/makedumpfile.c b/makedumpfile.c
> index d76a435..496e212 100644
> --- a/makedumpfile.c
> +++ b/makedumpfile.c
> @@ -3637,7 +3637,6 @@ initialize_bitmap_memory(void)
>  	struct disk_dump_header	*dh;
>  	struct kdump_sub_header *kh;
>  	struct dump_bitmap *bmp;
> -	off_t bitmap_offset;
>  	off_t bitmap_len, max_sect_len;
>  	mdf_pfn_t pfn;
>  	int i, j;
> @@ -3647,8 +3646,6 @@ initialize_bitmap_memory(void)
>  	kh = info->kh_memory;
>  	block_size = dh->block_size;
>  
> -	bitmap_offset
> -	    = (DISKDUMP_HEADER_BLOCKS + dh->sub_hdr_size) * block_size;
>  	bitmap_len = block_size * dh->bitmap_blocks;
>  
>  	bmp = malloc(sizeof(struct dump_bitmap));
> @@ -3667,7 +3664,7 @@ initialize_bitmap_memory(void)
>  	bmp->file_name = info->name_memory;
>  	bmp->no_block  = -1;
>  	memset(bmp->buf, 0, BUFSIZE_BITMAP);
> -	bmp->offset = bitmap_offset + bitmap_len / 2;
> +	bmp->offset = bitmap_len / 2;
>  	info->bitmap_memory = bmp;
>  
>  	if (dh->header_version >= 6)
> diff --git a/makedumpfile.h b/makedumpfile.h
> index 24b2f69..3c02e83 100644
> --- a/makedumpfile.h
> +++ b/makedumpfile.h
> @@ -1171,6 +1171,7 @@ struct dump_bitmap {
>  	int		no_block;
>  	char		*file_name;
>  	char		*buf;
> +	/* offset in bitmap section */
>  	off_t		offset;
>  };
>  
> @@ -2204,10 +2205,10 @@ is_dumpable_buffer(struct dump_bitmap *bitmap, mdf_pfn_t pfn, struct cycle *cycl
>  static inline int
>  is_dumpable_file(struct dump_bitmap *bitmap, mdf_pfn_t pfn)
>  {
> -	off_t offset;
> +	off_t offset = info->offset_bitmap1;
>  	ssize_t rcode;
>  	if (pfn == 0 || bitmap->no_block != pfn/PFN_BUFBITMAP) {
> -		offset = bitmap->offset + BUFSIZE_BITMAP*(pfn/PFN_BUFBITMAP);
> +		offset += bitmap->offset + BUFSIZE_BITMAP*(pfn/PFN_BUFBITMAP);
>  		if (lseek(bitmap->fd, offset, SEEK_SET) < 0 ) {
>  			ERRMSG("Can't seek the bitmap(%s). %s\n",
>  				bitmap->file_name, strerror(errno));
> diff --git a/sadump_info.c b/sadump_info.c
> index 46867ce..a3d51b9 100644
> --- a/sadump_info.c
> +++ b/sadump_info.c
> @@ -137,11 +137,11 @@ sadump_is_on(char *bitmap, mdf_pfn_t i)
>  static inline int
>  sadump_is_dumpable(struct dump_bitmap *bitmap, mdf_pfn_t pfn)
>  {
> -	off_t offset;
> +	off_t offset = info->offset_bitmap1;
>  	ssize_t rcode;
>  
>  	if (pfn == 0 || bitmap->no_block != pfn/PFN_BUFBITMAP) {
> -		offset = bitmap->offset + BUFSIZE_BITMAP*(pfn/PFN_BUFBITMAP);
> +		offset += bitmap->offset + BUFSIZE_BITMAP*(pfn/PFN_BUFBITMAP);
>  		lseek(bitmap->fd, offset, SEEK_SET);
>  		rcode = read(bitmap->fd, bitmap->buf, BUFSIZE_BITMAP);
>  		if (rcode != BUFSIZE_BITMAP)
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
