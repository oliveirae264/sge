object DMNFSe: TDMNFSe
  OldCreateOrder = False
  Height = 532
  Width = 841
  object frdOSTomador: TfrxDBDataset
    UserName = 'OSTomador'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'PESSOA_FISICA=PESSOA_FISICA'
      'CNPJ=CNPJ'
      'NOME=NOME'
      'NOMEFANT=NOMEFANT'
      'INSCEST=INSCEST'
      'INSCMUN=INSCMUN'
      'FONE=FONE'
      'FONECEL=FONECEL'
      'FONECOMERC=FONECOMERC'
      'FONES=FONES'
      'EMAIL=EMAIL'
      'SITE=SITE'
      'TLG_TIPO=TLG_TIPO'
      'TLG_DESCRICAO=TLG_DESCRICAO'
      'TLG_SIGLA=TLG_SIGLA'
      'LOG_COD=LOG_COD'
      'LOG_NOME=LOG_NOME'
      'COMPLEMENTO=COMPLEMENTO'
      'NUMERO_END=NUMERO_END'
      'CEP=CEP'
      'BAI_COD=BAI_COD'
      'BAI_NOME=BAI_NOME'
      'CID_COD=CID_COD'
      'CID_NOME=CID_NOME'
      'CID_SIAFI=CID_SIAFI'
      'CID_IBGE=CID_IBGE'
      'CID_DDD=CID_DDD'
      'EST_COD=EST_COD'
      'EST_NOME=EST_NOME'
      'EST_SIGLA=EST_SIGLA'
      'EST_SIAFI=EST_SIAFI'
      'PAIS_ID=PAIS_ID'
      'PAIS_NOME=PAIS_NOME')
    DataSet = fdQryOSTomador
    BCDToCurrency = False
    Left = 200
    Top = 88
  end
  object fdQryOSTomador: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    SQL.Strings = (
      'Select'
      '    c.Codigo'
      '  , c.Pessoa_fisica'
      '  , c.Cnpj'
      '  , c.Nome'
      '  , coalesce(nullif(trim(c.NomeFant), '#39#39'), c.Nome) as NomeFant'
      '  , c.Inscest'
      '  , c.Inscmun'
      ''
      '  , coalesce(c.Fone, '#39#39') as Fone'
      '  , coalesce(c.fonecel, '#39#39') as fonecel'
      '  , coalesce(c.fonecomerc, '#39#39') as fonecomerc'
      
        '  , coalesce(c.Fone || '#39' / '#39', '#39#39') || coalesce(c.fonecel || '#39' / '#39 +
        ', '#39#39') || coalesce(c.fonecomerc || '#39#39', '#39#39') as fones'
      '  , coalesce(c.Email, '#39#39') as Email'
      '  , coalesce(c.Site, '#39#39') as Site'
      ''
      '  , c.Tlg_tipo'
      '  , tl.Tlg_descricao'
      '  , tl.Tlg_sigla'
      '  , c.Log_cod'
      '  , lg.Log_nome'
      '  , coalesce(c.Complemento, '#39#39') as Complemento'
      '  , c.Numero_end'
      '  , c.Cep'
      ''
      '  , c.Bai_cod'
      '  , br.Bai_nome'
      ''
      '  , c.Cid_cod'
      '  , cd.Cid_nome'
      '  , cd.Cid_siafi'
      '  , cd.Cid_ibge'
      '  , cd.Cid_ddd'
      ''
      '  , c.Est_cod'
      '  , uf.Est_nome'
      '  , uf.Est_sigla'
      '  , uf.Est_siafi'
      ''
      '  , c.Pais_id'
      '  , pa.Pais_nome'
      'from TBCLIENTE c'
      '  left join TBESTADO uf on (uf.Est_cod = c.Est_cod)'
      '  left join TBCIDADE cd on (cd.Cid_cod = c.Cid_cod)'
      '  left join TBBAIRRO br on (br.Bai_cod = c.Bai_cod)'
      '  left join TBLOGRADOURO lg on (lg.Log_cod = c.Log_cod)'
      '  left join TBTIPO_LoGRADOURO tl on (tl.Tlg_cod = c.Tlg_tipo)'
      '  left Join TBPAIS pa on (pa.Pais_id = c.Pais_id)'
      ''
      'where c.Codigo = :Codigo')
    Left = 168
    Top = 88
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object frdOSCalculoImposto: TfrxDBDataset
    UserName = 'OS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ANO=ANO'
      'CONTROLE=CONTROLE'
      'EMPRESA=EMPRESA'
      'CLIENTE=CLIENTE'
      'DATA_CADASTRO=DATA_CADASTRO'
      'DATA_EMISSAO=DATA_EMISSAO'
      'DATA_PREVISAO_CONCLUSAO=DATA_PREVISAO_CONCLUSAO'
      'USUARIO=USUARIO'
      'RESPONSAVEL=RESPONSAVEL'
      'RESPONSAVEL_NOME=RESPONSAVEL_NOME'
      'RESPONSAVEL_CPF=RESPONSAVEL_CPF'
      'STATUS=STATUS'
      'OBSERVACOES=OBSERVACOES'
      'RELATO_SOLICITACAO=RELATO_SOLICITACAO'
      'DADOS_ENTREGA=DADOS_ENTREGA'
      'DATA_APROVACAO=DATA_APROVACAO'
      'DATA_FINALIZACAO=DATA_FINALIZACAO'
      'DATA_FATURA=DATA_FATURA'
      'COMPETENCIA=COMPETENCIA'
      'CAIXA_ANO=CAIXA_ANO'
      'CAIXA_NUM=CAIXA_NUM'
      'CANCEL_DATAHORA=CANCEL_DATAHORA'
      'CANCEL_USUARIO=CANCEL_USUARIO'
      'CANCEL_MOTIVO=CANCEL_MOTIVO'
      'LISTA_FORMA_PAGO=LISTA_FORMA_PAGO'
      'LISTA_COND_PAGO=LISTA_COND_PAGO'
      'LISTA_COND_PAGO_FULL=LISTA_COND_PAGO_FULL'
      'TOTAL_CUSTO=TOTAL_CUSTO'
      'TOTAL_SERVICO=TOTAL_SERVICO'
      'TOTAL_PRODUTO=TOTAL_PRODUTO'
      'TOTAL_DESCONTOS_SERVICOS=TOTAL_DESCONTOS_SERVICOS'
      'TOTAL_DESCONTOS_PRODUTOS=TOTAL_DESCONTOS_PRODUTOS'
      'TOTAL_DESCONTOS=TOTAL_DESCONTOS'
      'TOTAL_OS=TOTAL_OS'
      'TOTAL_BRUTO=TOTAL_BRUTO'
      'TOTAL_LIQUIDO=TOTAL_LIQUIDO'
      'TOTAL_APROVADO_SERVICO=TOTAL_APROVADO_SERVICO'
      'TOTAL_APROVADO_PRODUTO=TOTAL_APROVADO_PRODUTO'
      'NFS_LOTE=NFS_LOTE'
      'NFS_SERIE=NFS_SERIE'
      'NFS_NUMERO=NFS_NUMERO'
      'NFS_DATAEMISSAO=NFS_DATAEMISSAO'
      'NFS_HORAEMISSAO=NFS_HORAEMISSAO'
      'NFS_CNAE=NFS_CNAE'
      'NFS_NCM=NFS_NCM'
      'NFS_DESCRICAO_SERVICO=NFS_DESCRICAO_SERVICO'
      'NFS_ENVIADA=NFS_ENVIADA')
    DataSet = fdQryOSCalculoImposto
    BCDToCurrency = False
    Left = 200
    Top = 136
  end
  object fdQryOSCalculoImposto: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    SQL.Strings = (
      'Select'
      '    o.ano'
      '  , o.controle'
      '  , o.empresa'
      '  , o.cliente'
      '  , o.data_cadastro'
      '  , o.data_emissao'
      '  , o.data_previsao_conclusao'
      '  , o.usuario'
      '  , o.vendedor as responsavel'
      '  , vd.nome    as responsavel_nome'
      '  , vd.cpf     as responsavel_cpf'
      '  , o.status'
      '  , o.observacoes'
      '  , o.relato_solicitacao'
      '  , o.dados_entrega'
      '  , o.data_aprovacao'
      '  , o.data_finalizacao'
      '  , o.data_fatura'
      '  , o.competencia'
      '  , o.caixa_ano'
      '  , o.caixa_num'
      '  , o.cancel_datahora'
      '  , o.cancel_usuario'
      '  , o.cancel_motivo'
      ''
      '  , ('
      '    Select list(fp.descri)'
      '    from TBOS_FORMAPAGTO x'
      '      inner join TBFORMPAGTO fp on (fp.cod = x.formapagto)'
      '    where x.ano      = o.ano'
      '      and x.controle = o.controle'
      '    ) as lista_forma_pago'
      ''
      '  , ('
      '    Select list(cp.cond_descricao)'
      '    from TBOS_FORMAPAGTO y'
      
        '      inner join VW_CONDICAOPAGTO cp on (cp.cond_cod = y.condica' +
        'opagto)'
      '    where y.ano      = o.ano'
      '      and y.controle = o.controle'
      '    ) as lista_cond_pago'
      ''
      '  , ('
      
        '    Select list(case when z.pagto_prazo = 1 then cp.cond_descric' +
        'ao_full else cp.cond_descricao end)'
      '    from TBOS_FORMAPAGTO z'
      
        '      inner join VW_CONDICAOPAGTO cp on (cp.cond_cod = z.condica' +
        'opagto)'
      '    where z.ano      = o.ano'
      '      and z.controle = o.controle'
      '    ) as lista_cond_pago_full'
      ''
      '  , o.total_custo'
      '  , o.total_servico'
      '  , o.total_produto'
      '  , o.total_descontos_servicos'
      '  , o.total_descontos_produtos'
      '  , o.total_descontos'
      '  , o.total_os'
      '  , o.total_bruto'
      '  , o.total_liquido'
      '  , o.total_aprovado_servico'
      '  , o.total_aprovado_produto'
      ''
      '  , o.nfs_lote'
      '  , o.nfs_serie'
      '  , o.nfs_numero'
      '  , o.nfs_dataemissao'
      '  , o.nfs_horaemissao'
      '  , o.nfs_cnae'
      '  , o.nfs_ncm'
      '  , o.nfs_descricao_servico'
      '  , o.nfs_enviada'
      ''
      'from TBOS o'
      '  left join TBVENDEDOR vd on (vd.cod = o.vendedor)'
      '  left join TBCNAE cn on (cn.codigo = o.nfs_cnae)'
      '  left join VW_TABELA_IBPT nc on (nc.ncm_sh = o.nfs_ncm)'
      ''
      'where o.Ano      = :ano'
      '  and o.controle = :controle'
      '')
    Left = 168
    Top = 136
    ParamData = <
      item
        Name = 'ANO'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CONTROLE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object frdOSDadosServico: TfrxDBDataset
    UserName = 'OSDadosServico'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ANO=ANO'
      'CONTROLE=CONTROLE'
      'SEQ=SEQ'
      'SERVICO=SERVICO'
      'DESCRI=DESCRI'
      'APRESENTACAO=APRESENTACAO'
      'DESCRI_APRESENTACAO=DESCRI_APRESENTACAO'
      'REFERENCIA=REFERENCIA'
      'NCM_SH=NCM_SH'
      'NCM_ALIQUOTA_NAC=NCM_ALIQUOTA_NAC'
      'NCM_ALIQUOTA_IMP=NCM_ALIQUOTA_IMP'
      'NCM_ALIQUOTA_EST=NCM_ALIQUOTA_EST'
      'NCM_ALIQUOTA_MUN=NCM_ALIQUOTA_MUN'
      'CODTIPO=CODTIPO'
      'CODORIGEM=CODORIGEM'
      'CODTRIBUTACAO=CODTRIBUTACAO'
      'CST_PIS=CST_PIS'
      'CST_COFINS=CST_COFINS'
      'CST_PIS_INDICE_ACBR=CST_PIS_INDICE_ACBR'
      'CST_COFINS_INDICE_ACBR=CST_COFINS_INDICE_ACBR'
      'EMPRESA=EMPRESA'
      'CLIENTE=CLIENTE'
      'QTDE=QTDE'
      'PUNIT=PUNIT'
      'PUNIT_PROMOCAO=PUNIT_PROMOCAO'
      'DESCONTO=DESCONTO'
      'DESCONTO_VALOR=DESCONTO_VALOR'
      'PFINAL=PFINAL'
      'UNIDADE=UNIDADE'
      'UNP_DESCRICAO=UNP_DESCRICAO'
      'UNP_SIGLA=UNP_SIGLA'
      'TOTAL_CUSTO=TOTAL_CUSTO'
      'TOTAL_BRUTO=TOTAL_BRUTO'
      'TOTAL_DESCONTO=TOTAL_DESCONTO'
      'TOTAL_LIQUIDO=TOTAL_LIQUIDO'
      'APROVADO=APROVADO')
    DataSet = fdQryOSDadosServico
    BCDToCurrency = False
    Left = 200
    Top = 232
  end
  object fdQryOSDadosServico: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    SQL.Strings = (
      'Select'
      '    i.Ano'
      '  , i.controle'
      '  , i.seq'
      '  , i.servico'
      '  , p.descri'
      '  , coalesce(p.apresentacao, '#39#39') as Apresentacao'
      
        '  , coalesce(p.descri_apresentacao, p.Descri) as Descri_apresent' +
        'acao'
      '  , coalesce(p.referencia, '#39#39') as Referencia'
      '  , coalesce(trim(p.ncm_sh), '#39'00000000'#39')     as Ncm_sh'
      '  , coalesce(ib.aliqnacional_ibpt, 0.0)      as Ncm_aliquota_nac'
      '  , coalesce(ib.aliqinternacional_ibpt, 0.0) as Ncm_aliquota_imp'
      '  , coalesce(ib.aliqestadual_ibpt, 0.0)      as Ncm_aliquota_est'
      '  , coalesce(ib.aliqmunicipal_ibpt, 0.0)     as Ncm_aliquota_mun'
      '  , p.codtipo'
      '  , p.codorigem'
      '  , p.codtributacao'
      '  , p.cst_pis'
      '  , p.cst_cofins'
      '  , coalesce(ps.indice_acbr, 32) as Cst_pis_indice_ACBr'
      '  , coalesce(cs.indice_acbr, 32) as Cst_cofins_indice_ACBr'
      '  , i.empresa'
      '  , i.cliente'
      '  , i.qtde'
      '  , i.punit'
      '  , i.punit_promocao'
      '  , i.desconto'
      '  , i.desconto_valor'
      '  , i.pfinal'
      '  , i.unidade'
      '  , u.unp_descricao'
      '  , u.unp_sigla'
      '  , i.total_custo'
      '  , i.total_bruto'
      '  , i.total_desconto'
      '  , i.total_liquido'
      '  , i.aprovado'
      'from TBOS_SERVICO i'
      
        '  inner join TBPRODUTO    p on (p.cod = i.servico and p.aliquota' +
        '_tipo = 1) /* 1 - ISS  (Para Servicos) */'
      '  left join TBUNIDADEPROD u on (u.Unp_cod = i.unidade)'
      '  left join TBCST_PIS    ps on (ps.Codigo = p.Cst_pis)'
      '  left join TBCST_COFINS cs on (cs.Codigo = p.Cst_cofins)'
      
        '  left join SYS_IBPT     ib on (ib.id_ibpt = p.tabela_ibpt and i' +
        'b.ativo = 1)'
      'where i.ano      = :ano'
      '  and i.controle = :controle'
      '  and ((i.aprovado = 1) or (:todos = 1))'
      ''
      'order by'
      '    i.ano'
      '  , i.controle'
      '  , i.seq')
    Left = 168
    Top = 232
    ParamData = <
      item
        Name = 'ANO'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CONTROLE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TODOS'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object frdOSDadosProduto: TfrxDBDataset
    UserName = 'OSDadosProduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ANO=ANO'
      'CONTROLE=CONTROLE'
      'SEQ=SEQ'
      'PRODUTO=PRODUTO'
      'DESCRI=DESCRI'
      'APRESENTACAO=APRESENTACAO'
      'DESCRI_APRESENTACAO=DESCRI_APRESENTACAO'
      'REFERENCIA=REFERENCIA'
      'NCM_SH=NCM_SH'
      'NCM_ALIQUOTA_NAC=NCM_ALIQUOTA_NAC'
      'NCM_ALIQUOTA_IMP=NCM_ALIQUOTA_IMP'
      'NCM_ALIQUOTA_EST=NCM_ALIQUOTA_EST'
      'NCM_ALIQUOTA_MUN=NCM_ALIQUOTA_MUN'
      'CODTIPO=CODTIPO'
      'CODORIGEM=CODORIGEM'
      'CODTRIBUTACAO=CODTRIBUTACAO'
      'CST_PIS=CST_PIS'
      'CST_COFINS=CST_COFINS'
      'CST_PIS_INDICE_ACBR=CST_PIS_INDICE_ACBR'
      'CST_COFINS_INDICE_ACBR=CST_COFINS_INDICE_ACBR'
      'EMPRESA=EMPRESA'
      'CLIENTE=CLIENTE'
      'QTDE=QTDE'
      'PUNIT=PUNIT'
      'PUNIT_PROMOCAO=PUNIT_PROMOCAO'
      'DESCONTO=DESCONTO'
      'DESCONTO_VALOR=DESCONTO_VALOR'
      'PFINAL=PFINAL'
      'UNIDADE=UNIDADE'
      'UNP_DESCRICAO=UNP_DESCRICAO'
      'UNP_SIGLA=UNP_SIGLA'
      'TOTAL_CUSTO=TOTAL_CUSTO'
      'TOTAL_BRUTO=TOTAL_BRUTO'
      'TOTAL_DESCONTO=TOTAL_DESCONTO'
      'TOTAL_LIQUIDO=TOTAL_LIQUIDO'
      'APROVADO=APROVADO')
    DataSet = fdQryOSDadosProduto
    BCDToCurrency = False
    Left = 200
    Top = 280
  end
  object fdQryOSDadosProduto: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    SQL.Strings = (
      'Select'
      '    i.Ano'
      '  , i.controle'
      '  , i.seq'
      '  , i.produto'
      '  , p.descri'
      '  , coalesce(p.apresentacao, '#39#39') as Apresentacao'
      
        '  , coalesce(p.descri_apresentacao, p.Descri) as Descri_apresent' +
        'acao'
      '  , coalesce(p.referencia, '#39#39') as Referencia'
      '  , coalesce(trim(p.ncm_sh), '#39'00000000'#39')     as Ncm_sh'
      '  , coalesce(ib.aliqnacional_ibpt, 0.0)      as Ncm_aliquota_nac'
      '  , coalesce(ib.aliqinternacional_ibpt, 0.0) as Ncm_aliquota_imp'
      '  , coalesce(ib.aliqestadual_ibpt, 0.0)      as Ncm_aliquota_est'
      '  , coalesce(ib.aliqmunicipal_ibpt, 0.0)     as Ncm_aliquota_mun'
      '  , p.codtipo'
      '  , p.codorigem'
      '  , p.codtributacao'
      '  , p.cst_pis'
      '  , p.cst_cofins'
      '  , coalesce(ps.indice_acbr, 32) as Cst_pis_indice_ACBr'
      '  , coalesce(cs.indice_acbr, 32) as Cst_cofins_indice_ACBr'
      '  , i.empresa'
      '  , i.cliente'
      '  , i.qtde'
      '  , i.punit'
      '  , i.punit_promocao'
      '  , i.desconto'
      '  , i.desconto_valor'
      '  , i.pfinal'
      '  , i.unidade'
      '  , u.unp_descricao'
      '  , u.unp_sigla'
      '  , i.total_custo'
      '  , i.total_bruto'
      '  , i.total_desconto'
      '  , i.total_liquido'
      '  , i.aprovado'
      'from TBOS_PRODUTO i'
      
        '  inner join TBPRODUTO    p on (p.cod = i.produto and p.aliquota' +
        '_tipo = 0) /* 0 - ICMS (Para Produtos) */'
      '  left join TBUNIDADEPROD u on (u.Unp_cod = i.unidade)'
      '  left join TBCST_PIS    ps on (ps.Codigo = p.Cst_pis)'
      '  left join TBCST_COFINS cs on (cs.Codigo = p.Cst_cofins)'
      
        '  left join SYS_IBPT     ib on (ib.id_ibpt = p.tabela_ibpt and i' +
        'b.ativo = 1)'
      'where i.ano      = :ano'
      '  and i.controle = :controle'
      '  and ((i.aprovado = 1) or (:todos = 1))'
      ''
      'order by'
      '    i.ano'
      '  , i.controle'
      '  , i.seq')
    Left = 168
    Top = 280
    ParamData = <
      item
        Name = 'ANO'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CONTROLE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TODOS'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object frdOSDuplicatas: TfrxDBDataset
    UserName = 'OSDuplicatas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ANO=ANO'
      'CONTROLE=CONTROLE'
      'SEQ=SEQ'
      'PRODUTO=PRODUTO'
      'DESCRI=DESCRI'
      'APRESENTACAO=APRESENTACAO'
      'DESCRI_APRESENTACAO=DESCRI_APRESENTACAO'
      'REFERENCIA=REFERENCIA'
      'NCM_SH=NCM_SH'
      'NCM_ALIQUOTA_NAC=NCM_ALIQUOTA_NAC'
      'NCM_ALIQUOTA_IMP=NCM_ALIQUOTA_IMP'
      'NCM_ALIQUOTA_EST=NCM_ALIQUOTA_EST'
      'NCM_ALIQUOTA_MUN=NCM_ALIQUOTA_MUN'
      'CODTIPO=CODTIPO'
      'CODORIGEM=CODORIGEM'
      'CODTRIBUTACAO=CODTRIBUTACAO'
      'CST_PIS=CST_PIS'
      'CST_COFINS=CST_COFINS'
      'CST_PIS_INDICE_ACBR=CST_PIS_INDICE_ACBR'
      'CST_COFINS_INDICE_ACBR=CST_COFINS_INDICE_ACBR'
      'EMPRESA=EMPRESA'
      'CLIENTE=CLIENTE'
      'QTDE=QTDE'
      'PUNIT=PUNIT'
      'PUNIT_PROMOCAO=PUNIT_PROMOCAO'
      'DESCONTO=DESCONTO'
      'DESCONTO_VALOR=DESCONTO_VALOR'
      'PFINAL=PFINAL'
      'UNIDADE=UNIDADE'
      'UNP_DESCRICAO=UNP_DESCRICAO'
      'UNP_SIGLA=UNP_SIGLA'
      'TOTAL_CUSTO=TOTAL_CUSTO'
      'TOTAL_BRUTO=TOTAL_BRUTO'
      'TOTAL_DESCONTO=TOTAL_DESCONTO'
      'TOTAL_LIQUIDO=TOTAL_LIQUIDO'
      'APROVADO=APROVADO')
    DataSet = fdQryOSDuplicatas
    BCDToCurrency = False
    Left = 200
    Top = 328
  end
  object fdQryOSDuplicatas: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    SQL.Strings = (
      'Select'
      '    r.Anolanc'
      '  , r.Numlanc'
      '  , r.Parcela'
      '  , r.Dtemiss'
      '  , r.Dtvenc'
      '  , r.Valorrec'
      '  , r.Valormulta'
      '  , r.Percentdesconto'
      '  , r.valorrectot'
      '  , r.valorsaldo'
      '  , r.historic'
      '  , r.tippag'
      '  , r.baixado'
      '  , r.dtrec '
      'from TBCONTREC r'
      'where r.anoos = :ano'
      '  and r.numos = :controle')
    Left = 168
    Top = 328
    ParamData = <
      item
        Name = 'ANO'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CONTROLE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object frdOSFormaPagtos: TfrxDBDataset
    UserName = 'OSFormaPagtos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FORMAPAGTO=FORMAPAGTO'
      'DESCRI=DESCRI'
      'ACRESCIMO=ACRESCIMO'
      'FORMAPAGTO_NFCE=FORMAPAGTO_NFCE'
      'FORMAPAGTO_PDV=FORMAPAGTO_PDV'
      'FORMAPAGTO_PDV_CUPOM_EXTRA=FORMAPAGTO_PDV_CUPOM_EXTRA'
      'CONDICAOPAGTO=CONDICAOPAGTO'
      'COND_DESCRICAO=COND_DESCRICAO'
      'COND_DESCRICAO_FULL=COND_DESCRICAO_FULL'
      'COND_DESCRICAO_PDV=COND_DESCRICAO_PDV'
      'PAGTO_PRAZO=PAGTO_PRAZO'
      'VALOR_FPAGTO=VALOR_FPAGTO'
      'VALOR_RECEBIDO=VALOR_RECEBIDO'
      'PRAZO_01=PRAZO_01'
      'PRAZO_02=PRAZO_02'
      'PRAZO_03=PRAZO_03'
      'PRAZO_04=PRAZO_04'
      'PRAZO_05=PRAZO_05'
      'PRAZO_06=PRAZO_06'
      'PRAZO_07=PRAZO_07'
      'PRAZO_08=PRAZO_08'
      'PRAZO_09=PRAZO_09'
      'PRAZO_10=PRAZO_10'
      'PRAZO_11=PRAZO_11'
      'PRAZO_12=PRAZO_12')
    DataSet = fdQryOsFormaPagtos
    BCDToCurrency = False
    Left = 200
    Top = 376
  end
  object fdQryOsFormaPagtos: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    SQL.Strings = (
      'Select'
      '    o.formapagto'
      '  , fp.Descri'
      '  , fp.Acrescimo'
      '  , fp.FormaPagto_NFCe'
      '  , fp.Formapagto_PDV'
      '  , fp.Formapagto_PDV_Cupom_Extra'
      '  , o.condicaopagto'
      '  , cp.Cond_descricao'
      '  , cp.Cond_descricao_full'
      '  , cp.Cond_descricao_pdv'
      '  , o.pagto_prazo'
      '  , o.valor_fpagto'
      '  , o.valor_recebido'
      '  , o.Prazo_01'
      '  , o.Prazo_02'
      '  , o.Prazo_03'
      '  , o.Prazo_04'
      '  , o.Prazo_05'
      '  , o.Prazo_06'
      '  , o.Prazo_07'
      '  , o.Prazo_08'
      '  , o.Prazo_09'
      '  , o.Prazo_10'
      '  , o.Prazo_11'
      '  , o.Prazo_12'
      'from TBOS_FORMAPAGTO o'
      '  inner join TBFORMPAGTO fp on (fp.Cod = o.formapagto)'
      
        '  inner join VW_CONDICAOPAGTO cp on (cp.Cond_cod = o.condicaopag' +
        'to)'
      'where o.ano      = :ano'
      '  and o.controle = :controle')
    Left = 168
    Top = 376
    ParamData = <
      item
        Name = 'ANO'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CONTROLE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object frrOSOrcamento: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40928.407150601900000000
    ReportOptions.LastChange = 42389.934059375000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      
        'procedure bndChildSummaryOnAfterCalcHeight(Sender: TfrxComponent' +
        ');'
      'begin'
      
        '//  mmTextoAutorizacao.Visible := (<frdVenda."STATUS"> = 1) or (' +
        '<frdVenda."STATUS"> = 2); // Em Antendimento, Or'#231'amento         ' +
        '                                      '
      
        '//  subRptTitulos.Visible      := (<frdVenda."STATUS"> = 3) or (' +
        '<frdVenda."STATUS"> = 4); // Finalizada, NF-e                   ' +
        '                        '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 96
    Top = 88
    Datasets = <
      item
        DataSet = DMNFe.frdEmpresa
        DataSetName = 'frdEmpresa'
      end
      item
        DataSet = frdOSCalculoImposto
        DataSetName = 'OS'
      end
      item
        DataSet = frdOSDadosItem
        DataSetName = 'OSDadosItem'
      end
      item
        DataSet = frdOSDadosProduto
        DataSetName = 'OSDadosProduto'
      end
      item
        DataSet = frdOSDadosServico
        DataSetName = 'OSDadosServico'
      end
      item
        DataSet = frdOSDuplicatas
        DataSetName = 'OSDuplicatas'
      end
      item
        DataSet = frdOSFormaPagtos
        DataSetName = 'OSFormaPagtos'
      end
      item
        DataSet = frdOSTomador
        DataSetName = 'OSTomador'
      end>
    Variables = <
      item
        Name = ' Local'
        Value = Null
      end
      item
        Name = 'Descontos'
        Value = '<OSDadosItem."TOTAL_DESCONTO">'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object PgVenda: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Lucida Console'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object bndReportTitle: TfrxReportTitle
        FillType = ftBrush
        Height = 90.401670000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object frdVendaCODCONTROL: TfrxMemoView
          Left = 551.811380000000000000
          Top = 18.897650000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frdVenda."ANO"]/[FormatFloat('#39'0000000'#39',<frdVenda."CODCONTROL">)' +
              ']')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 551.811380000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Lucida Console'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'N '#250' m e r o   C o n t r o l e :')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 551.811380000000000000
          Top = 37.795300000000000000
          Width = 166.299320000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = ANSI_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -9
          Highlight.Font.Name = 'Lucida Console'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '(<OS."STATUS"> = 9)'
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[IIF(<OS."STATUS">=9,'#39'Or'#231'amento Cancelado'#39','#39'Or'#231'amento'#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 79.370130000000000000
          DataField = 'LOGO'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frdEmpresaRZSOC: TfrxMemoView
          Left = 143.622140000000000000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frdEmpresa."NMFANT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frdEmpresaNMFANT: TfrxMemoView
          Left = 143.622140000000000000
          Top = 18.897650000000000000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          Memo.UTF8W = (
            
              'CNPJ.: [FormatMaskText('#39'##.###.###/####-##;0;'#39',<frdEmpresa."CNPJ' +
              '">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object frdFone: TfrxMemoView
          Left = 143.622140000000000000
          Top = 34.015770000000000000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          Memo.UTF8W = (
            'FONE: [FormatMaskText('#39'(##)####.####;0;'#39',<frdEmpresa."FONE">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 143.622140000000000000
          Top = 49.133890000000000000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frdEmpresa."TLG_SIGLA"] [frdEmpresa."LOG_NOME"], [frdEmpresa."N' +
              'UMERO_END"], [frdEmpresa."BAI_NOME"] - [frdEmpresa."CID_NOME"]/[' +
              'frdEmpresa."EST_SIGLA"] CEP.: [FormatMaskText('#39'##.###-###;0;'#39',<f' +
              'rdEmpresa."CEP">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 83.149660000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo44: TfrxMemoView
          Left = 143.622140000000000000
          Top = 64.252010000000000000
          Width = 574.488560000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frdEmpresa."HOME_PAGE"][IIF(Trim(<frdEmpresa."HOME_PAGE">)='#39#39',<' +
              'frdEmpresa."EMAIL">,IIF(Trim(<frdEmpresa."EMAIL">)='#39#39','#39#39','#39' / '#39'+<' +
              'frdEmpresa."EMAIL">))]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object bndMasterData: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 374.173470000000000000
        Width = 718.110700000000000000
        DataSet = frdOSDadosItem
        DataSetName = 'OSDadosItem'
        RowCount = 0
        object frdItensCODPROD: TfrxMemoView
          Left = 22.677180000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          Memo.UTF8W = (
            ' [OSDadosItem."CODIGO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object frdItensSEQ: TfrxMemoView
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object frdItensDESCRI: TfrxMemoView
          Left = 75.590600000000000000
          Width = 291.023639130000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          Memo.UTF8W = (
            
              ' [OSDadosItem."DESCRI"] [IIF(Trim(<OSDadosItem."REFERENCIA">)='#39#39 +
              ','#39#39','#39'(Ref.: '#39' + <OSDadosItem."REFERENCIA"> + '#39')'#39')]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo4: TfrxMemoView
          Left = 366.614410000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatFloat('#39',0.###'#39',<OSDadosItem."QTDE">)] ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatFloat('#39',0.00'#39',<OSDadosItem."TOTAL_LIQUIDO">)] ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 411.968770000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          Memo.UTF8W = (
            ' [OSDadosItem."UNP_SIGLA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 449.764070000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatFloat('#39',0.00'#39',<OSDadosItem."PUNIT">)] ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 514.016080000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatFloat('#39',0.00'#39',<OSDadosItem."DESCONTO_VALOR">)] ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 578.268090000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatFloat('#39',0.00'#39',<OSDadosItem."PFINAL">)] ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object bndPageFooter: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 873.071430000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 566.929500000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          CharSpacing = 2.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina : [Page#]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object bndHeader: TfrxHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        Height = 128.504020000000000000
        ParentFont = False
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo2: TfrxMemoView
          Top = 15.118120000000000000
          Width = 415.748300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' Cliente:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 415.748300000000000000
          Top = 15.118120000000000000
          Width = 207.874150000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' CPF/CNPJ.:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 623.622450000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Data: ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 623.622450000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Lucida Console'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            ' [FormatDateTime('#39'dd/mm/yyyy'#39',<OS."DATA_EMISSAO">)] ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Top = 45.354360000000000000
          Width = 718.110700000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' Endere'#231'o:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 415.748300000000000000
          Top = 26.456710000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Lucida Console'
          Font.Style = []
          Memo.UTF8W = (
            
              ' [IIF(<OSTomador."PESSOA_FISICA">=1,FormatMaskText('#39'###.###.###-' +
              '##;0;'#39',<OSTomador."CNPJ">),FormatMaskText('#39'##.###.###/####-##;0;' +
              #39',<OSTomador."CNPJ">))]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Top = 56.692950000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Lucida Console'
          Font.Style = []
          Memo.UTF8W = (
            
              ' [Trim(<OSTomador."TLG_SIGLA"> + '#39' '#39' + <OSTomador."LOG_NOME">)],' +
              ' [OSTomador."NUMERO_END"], [OSTomador."BAI_NOME"] - [OSTomador."' +
              'CID_NOME"]/[OSTomador."EST_SIGLA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object frdVendaNOME: TfrxMemoView
          Top = 26.456710000000000000
          Width = 415.748300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Lucida Console'
          Font.Style = []
          Memo.UTF8W = (
            
              ' [FormatFloat('#39'##0000'#39',<OSTomador."CODIGO">)] - [OSTomador."NOME' +
              '"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo40: TfrxMemoView
          Width = 718.110529130000000000
          Height = 15.118120000000000000
          CharSpacing = 2.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            ' Tomador do Servi'#231'o')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Top = 75.590600000000000000
          Width = 718.110529130000000000
          Height = 15.118120000000000000
          CharSpacing = 2.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            ' Descri'#231#227'o do Servi'#231'o (Relato / Solicita'#231#227'o)')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Rich2: TfrxRichView
          Top = 90.708720000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430204C756369646120436F6E736F6C653B
            7D7D0D0A7B5C2A5C67656E657261746F7220526963686564323020362E332E39
            3630307D5C766965776B696E64345C756331200D0A5C706172645C6C6936305C
            726932305C716A5C66305C667331345C7061720D0A5B4F532E2252454C41544F
            5F534F4C494349544143414F225D5C7061720D0A5C7061720D0A7D0D0A00}
        end
      end
      object bndReportSummary: TfrxReportSummary
        FillType = ftBrush
        Height = 185.196970000000000000
        Top = 483.779840000000000000
        Width = 718.110700000000000000
        Child = frrOSOrcamento.bndChildSummary
        Stretched = True
        object SysMemo1: TfrxSysMemoView
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[FormatFloat('#39',0.00'#39',SUM(<OSDadosItem."TOTAL_LIQUIDO">,bndMaster' +
              'Data,2))] ')
          ParentFont = False
          VAlign = vaCenter
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 480.000310000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            'T O T A L    G E R A L :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Top = 98.267780000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          Memo.UTF8W = (
            ' [OS."RESPONSAVEL_NOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Top = 86.929190000000000000
          Width = 366.614410000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' Respons'#225'vel:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          Top = 22.677180000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo30: TfrxMemoView
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          Memo.UTF8W = (
            ' [OS."LISTA_FORMA_PAGO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' Forma de Pagamento:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Top = 68.031540000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          Memo.UTF8W = (
            ' [OS."LISTA_COND_PAGO_FULL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Top = 56.692950000000000000
          Width = 718.110700000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' Condi'#231#227'o de Pagamento:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 366.614410000000000000
          Top = 98.267780000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatFloat('#39',0.00'#39',<OS."TOTAL_SERVICO">)] ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 366.614410000000000000
          Top = 86.929190000000000000
          Width = 128.504020000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            ' Total Servi'#231'o: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 495.118430000000000000
          Top = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatFloat('#39',0.00'#39',<Descontos>)] ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 495.118430000000000000
          Top = 86.929190000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            ' Desconto: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 589.606680000000000000
          Top = 98.267780000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatFloat('#39',0.00'#39',<OS."TOTAL_LIQUIDO">)] ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 589.606680000000000000
          Top = 86.929190000000000000
          Width = 128.504020000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            ' Total L'#237'quido: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Rich1: TfrxRichView
          Top = 120.944960000000000000
          Width = 718.110700000000000000
          Height = 64.252010000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430204C756369646120436F6E736F6C653B
            7D7B5C66315C666E696C5C666368617273657430205461686F6D613B7D7D0D0A
            7B5C2A5C67656E657261746F7220526963686564323020362E332E393630307D
            5C766965776B696E64345C756331200D0A5C706172645C6C6936305C72693230
            5C716A5C625C66305C667331345C7061720D0A4F6273657276615C2765375C27
            663565733A5C62305C7061720D0A5B4F532E224F425345525641434F4553225D
            5C7061720D0A5C7061720D0A5C62205B494946285472696D283C4F532E224441
            444F535F454E5452454741223E293D27272C2027272C20274C6F63616C206465
            20456E74726567612F5265616C697A615C2765375C2765336F3A27295D5C6230
            5C7061720D0A5B4F532E224441444F535F454E5452454741225D5C7061720D0A
            5C66315C667331365C7061720D0A7D0D0A00}
        end
      end
      object bndChildSummary: TfrxChild
        FillType = ftBrush
        Height = 158.740260000000000000
        Top = 691.653990000000000000
        Width = 718.110700000000000000
        OnAfterCalcHeight = 'bndChildSummaryOnAfterCalcHeight'
        object Memo42: TfrxMemoView
          Left = 234.330860000000000000
          Top = 138.842610000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura do Cliente')
          ParentFont = False
          VAlign = vaCenter
        end
        object mmTextoAutorizacao: TfrxMemoView
          Left = 37.795300000000000000
          Top = 26.456710000000000000
          Width = 623.622450000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              '                 Autorizamos a [frdEmpresa."NMFANT"] executar o ' +
              'presente or'#231'amento, na sua totalidade, e na forma/condi'#231#227'o de pa' +
              'gamentos estabelecida.')
          ParentFont = False
        end
        object subRptTitulos: TfrxSubreport
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Page = frrOSOrcamento.PgTitulos
        end
      end
      object bndGrpTipo: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 321.260050000000000000
        Width = 718.110700000000000000
        Condition = 'OSDadosItem."TIPO"'
        OutlineText = 'OSDadosItem."TIPO"'
        object Memo23: TfrxMemoView
          Top = 15.118120000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '#')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 22.677180000000000000
          Top = 15.118120000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            ' C'#243'digo')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 75.590600000000000000
          Top = 15.118120000000000000
          Width = 291.023639130000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            ' Descri'#231#227'o')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 411.968770000000000000
          Top = 15.118120000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            ' Und.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 449.764070000000000000
          Top = 15.118120000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            'V. Bruto ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 514.016080000000000000
          Top = 15.118120000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            'V. Desc. ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 578.268090000000000000
          Top = 15.118120000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            'V. L'#237'quido ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 642.520100000000000000
          Top = 15.118120000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            'T O T A L ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 366.614410000000000000
          Top = 15.118120000000000000
          Width = 45.354323390000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Width = 718.110529130000000000
          Height = 15.118120000000000000
          CharSpacing = 2.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Fill.BackColor = clBtnFace
          Memo.UTF8W = (
            
              ' [IIF(<OSDadosItem."TIPO"> = 0, '#39'Produto(s)/Insumo(s) utilizado(' +
              's)'#39', '#39'Servi'#231'o(s) / M'#227'o-de-Obra'#39')]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object bndGrpFooterTipo: TfrxGroupFooter
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 415.748300000000000000
        Width = 718.110700000000000000
      end
    end
    object PgTitulos: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object BndHeaderTitulos: TfrxHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo43: TfrxMemoView
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            ' Titulo(s):')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 75.590600000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            ' Parcela(s):')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            ' Vencimento(s):')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 241.889920000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Valor (R$):')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 332.598640000000000000
          Top = 3.779530000000000000
          Width = 385.512060000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object BndMasterDataTitulos: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 60.472480000000000000
        Width = 718.110700000000000000
        DataSet = frdOSDuplicatas
        DataSetName = 'OSDuplicatas'
        RowCount = 0
        object frdTituloPARCELA: TfrxMemoView
          Left = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Sans Typewriter'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            ' [OSDuplicata."PARCELA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object frdTituloANOLANC: TfrxMemoView
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Sans Typewriter'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            
              ' [OSDuplicata."ANO"]/[FormatFloat('#39'000000'#39',<OSDuplicata."NUMLANC' +
              '">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object frdTituloDTVENC: TfrxMemoView
          Left = 151.181200000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Sans Typewriter'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            ' [OSDuplicata."DTVENC"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object frdTituloVALORREC: TfrxMemoView
          Left = 241.889920000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Lucida Sans Typewriter'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[OSDuplicata."VALORREC"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object frdTituloHISTORIC: TfrxMemoView
          Left = 332.598640000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Lucida Sans Typewriter'
          Font.Style = []
          Memo.UTF8W = (
            
              ' [IIF(<OSDuplicata."BAIXADO">=1,'#39'-> Baixa realizada em '#39'+FormatD' +
              'ateTime('#39'dd/mm/yyyy'#39',<OSDuplicata."DTREC">)+'#39' em '#39'+<OSDuplicata.' +
              '"TIPPAG">,'#39#39')][IIF(<OSDuplicata."BAIXADO">=1,'#39' (R$ '#39'+FormatFloat' +
              '('#39',0.00'#39',<OSDuplicata."VALORRECTOT">)+'#39')'#39','#39#39')]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  object frdOSDadosItem: TfrxDBDataset
    UserName = 'OSDadosItem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ANO=ANO'
      'CONTROLE=CONTROLE'
      'TIPO=TIPO'
      'SEQ=SEQ'
      'CODIGO=CODIGO'
      'DESCRI=DESCRI'
      'APRESENTACAO=APRESENTACAO'
      'DESCRI_APRESENTACAO=DESCRI_APRESENTACAO'
      'REFERENCIA=REFERENCIA'
      'NCM_SH=NCM_SH'
      'NCM_ALIQUOTA_NAC=NCM_ALIQUOTA_NAC'
      'NCM_ALIQUOTA_IMP=NCM_ALIQUOTA_IMP'
      'NCM_ALIQUOTA_EST=NCM_ALIQUOTA_EST'
      'NCM_ALIQUOTA_MUN=NCM_ALIQUOTA_MUN'
      'CODTIPO=CODTIPO'
      'CODORIGEM=CODORIGEM'
      'CODTRIBUTACAO=CODTRIBUTACAO'
      'CST_PIS=CST_PIS'
      'CST_COFINS=CST_COFINS'
      'CST_PIS_INDICE_ACBR=CST_PIS_INDICE_ACBR'
      'CST_COFINS_INDICE_ACBR=CST_COFINS_INDICE_ACBR'
      'EMPRESA=EMPRESA'
      'CLIENTE=CLIENTE'
      'QTDE=QTDE'
      'PUNIT=PUNIT'
      'PUNIT_PROMOCAO=PUNIT_PROMOCAO'
      'DESCONTO=DESCONTO'
      'DESCONTO_VALOR=DESCONTO_VALOR'
      'PFINAL=PFINAL'
      'UNIDADE=UNIDADE'
      'UNP_DESCRICAO=UNP_DESCRICAO'
      'UNP_SIGLA=UNP_SIGLA'
      'TOTAL_CUSTO=TOTAL_CUSTO'
      'TOTAL_BRUTO=TOTAL_BRUTO'
      'TOTAL_DESCONTO=TOTAL_DESCONTO'
      'TOTAL_LIQUIDO=TOTAL_LIQUIDO'
      'APROVADO=APROVADO')
    DataSet = fdQryOSDadosItem
    BCDToCurrency = False
    Left = 200
    Top = 184
  end
  object fdQryOSDadosItem: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    SQL.Strings = (
      'Select'
      '    i.Ano'
      '  , i.controle'
      '  , 0 as tipo'
      '  , i.seq'
      '  , i.produto as codigo'
      '  , p.descri'
      '  , coalesce(p.apresentacao, '#39#39') as Apresentacao'
      
        '  , coalesce(p.descri_apresentacao, p.Descri) as Descri_apresent' +
        'acao'
      '  , coalesce(p.referencia, '#39#39') as Referencia'
      '  , coalesce(trim(p.ncm_sh), '#39'00000000'#39')     as Ncm_sh'
      '  , coalesce(ib.aliqnacional_ibpt, 0.0)      as Ncm_aliquota_nac'
      '  , coalesce(ib.aliqinternacional_ibpt, 0.0) as Ncm_aliquota_imp'
      '  , coalesce(ib.aliqestadual_ibpt, 0.0)      as Ncm_aliquota_est'
      '  , coalesce(ib.aliqmunicipal_ibpt, 0.0)     as Ncm_aliquota_mun'
      '  , p.codtipo'
      '  , p.codorigem'
      '  , p.codtributacao'
      '  , p.cst_pis'
      '  , p.cst_cofins'
      '  , coalesce(ps.indice_acbr, 32) as Cst_pis_indice_ACBr'
      '  , coalesce(cs.indice_acbr, 32) as Cst_cofins_indice_ACBr'
      '  , i.empresa'
      '  , i.cliente'
      '  , i.qtde'
      '  , i.punit'
      '  , i.punit_promocao'
      '  , i.desconto'
      '  , i.desconto_valor'
      '  , i.pfinal'
      '  , i.unidade'
      '  , u.unp_descricao'
      '  , u.unp_sigla'
      '  , i.total_custo'
      '  , i.total_bruto'
      '  , i.total_desconto'
      '  , i.total_liquido'
      '  , i.aprovado'
      'from TBOS_PRODUTO i'
      
        '  inner join TBPRODUTO    p on (p.cod = i.produto and p.aliquota' +
        '_tipo = 0) /* 0 - ICMS (Para Produtos) */'
      '  left join TBUNIDADEPROD u on (u.Unp_cod = i.unidade)'
      '  left join TBCST_PIS    ps on (ps.Codigo = p.Cst_pis)'
      '  left join TBCST_COFINS cs on (cs.Codigo = p.Cst_cofins)'
      
        '  left join SYS_IBPT     ib on (ib.id_ibpt = p.tabela_ibpt and i' +
        'b.ativo = 1)'
      'where i.ano      = :ano'
      '  and i.controle = :controle'
      '  and ((i.aprovado = 1) or (:todos = 1))'
      ''
      'union all'
      ''
      'Select'
      '    i.Ano'
      '  , i.controle'
      '  , 1 as tipo'
      '  , i.seq'
      '  , i.servico as codigo'
      '  , p.descri'
      '  , coalesce(p.apresentacao, '#39#39') as Apresentacao'
      
        '  , coalesce(p.descri_apresentacao, p.Descri) as Descri_apresent' +
        'acao'
      '  , coalesce(p.referencia, '#39#39') as Referencia'
      '  , coalesce(trim(p.ncm_sh), '#39'00000000'#39')     as Ncm_sh'
      '  , coalesce(ib.aliqnacional_ibpt, 0.0)      as Ncm_aliquota_nac'
      '  , coalesce(ib.aliqinternacional_ibpt, 0.0) as Ncm_aliquota_imp'
      '  , coalesce(ib.aliqestadual_ibpt, 0.0)      as Ncm_aliquota_est'
      '  , coalesce(ib.aliqmunicipal_ibpt, 0.0)     as Ncm_aliquota_mun'
      '  , p.codtipo'
      '  , p.codorigem'
      '  , p.codtributacao'
      '  , p.cst_pis'
      '  , p.cst_cofins'
      '  , coalesce(ps.indice_acbr, 32) as Cst_pis_indice_ACBr'
      '  , coalesce(cs.indice_acbr, 32) as Cst_cofins_indice_ACBr'
      '  , i.empresa'
      '  , i.cliente'
      '  , i.qtde'
      '  , i.punit'
      '  , i.punit_promocao'
      '  , i.desconto'
      '  , i.desconto_valor'
      '  , i.pfinal'
      '  , i.unidade'
      '  , u.unp_descricao'
      '  , u.unp_sigla'
      '  , i.total_custo'
      '  , i.total_bruto'
      '  , i.total_desconto'
      '  , i.total_liquido'
      '  , i.aprovado'
      'from TBOS_SERVICO i'
      
        '  inner join TBPRODUTO    p on (p.cod = i.servico and p.aliquota' +
        '_tipo = 1) /* 1 - ISS  (Para Servicos) */'
      '  left join TBUNIDADEPROD u on (u.Unp_cod = i.unidade)'
      '  left join TBCST_PIS    ps on (ps.Codigo = p.Cst_pis)'
      '  left join TBCST_COFINS cs on (cs.Codigo = p.Cst_cofins)'
      
        '  left join SYS_IBPT     ib on (ib.id_ibpt = p.tabela_ibpt and i' +
        'b.ativo = 1)'
      'where i.ano      = :ano'
      '  and i.controle = :controle'
      '  and ((i.aprovado = 1) or (:todos = 1))'
      ''
      'order by'
      '    1 -- Ano'
      '  , 2 -- Controle'
      '  , 3 -- Tipo'
      '  , 4 -- Sequencial'
      '')
    Left = 168
    Top = 184
    ParamData = <
      item
        Name = 'ANO'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CONTROLE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TODOS'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
