<div class="container">
    @if(request()->routeIs('wines.edit'))
    <form action="{{ route('wines.update', $wine->id) }}" method="POST">
        @csrf
        @method('PUT')
    @endif
        <div class="card">
            <div class="card-header">
                @if (request()->routeIs('wines.edit'))
                <b>Modifier : </b>
                @endif
                {{ $wine->name }} - {{ $wine->year }}
            </div>
            <div class="card-body">
                <div class="row gy-3">
                    <div class='col-10'>
                        <label for="inputWineNameId" class="form-label">Nom</label>
                        <input type="text" class="form-control" id="inputWineNameId" placeholder="Nom du vin ?" name="name" value="{{ $wine->name }}" {{ request()->routeIs('wines.show') ? 'disabled' : '' }}/>
                    </div>
                    <div class='col-2'>
                        <label for="inputWineYearId" class="form-label">Millésime</label>
                        <select class="form-select" aria-label="Year ?" id="inputWineYearId" name="year" {{ request()->routeIs('wines.show') ? 'disabled' : '' }}>
                            @for ($i = 1900; $i < (date("Y") + 1); $i++)
                                <option value="{{ $i }} " {{ $wine->year === $i ? 'selected' : '' }}>{{ $i }}</option>
                            @endfor
                        </select>
                    </div>
                    <div class='col-5'>
                        <label for="inputWineGrapeId" class="form-label">Cépage</label>
                        <select class="form-select" aria-label="Cépage ?" id="inputWineGrapeId" name="grape_id" {{ request()->routeIs('wines.show') ? 'disabled' : '' }}>
                            @foreach ($grapes as $grape)
                                <option value="{{ $grape->id }} " {{ $wine->grape_id === $grape->id ? 'selected' : '' }}>{{ $grape->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class='col-5'>
                        <label for="inputWineTypeId" class="form-label">Type</label>
                        <select class="form-select" aria-label="Type ?" id="inputWineTypeId" name="type_id" {{ request()->routeIs('wines.show') ? 'disabled' : '' }}>
                            @foreach ($types as $type)
                                <option value="{{ $type->id }} " {{ $wine->type_id === $type->id ? 'selected' : '' }}>{{ $type->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class='col-2'>
                        <label for="inputWinePriceId" class="form-label">Prix</label>
                        <input type="text" class="form-control" id="inputWinePriceId" placeholder="Prix ?" name="price" value="{{ $wine->price }}" {{ request()->routeIs('wines.show') ? 'disabled' : '' }}/>
                    </div>
                    @if(request()->routeIs('wines.edit'))
                    <div class='col-12'>
                        <!--
                        <input type="file" class="form-control" id="inputGroupFileId" aria-describedby="inputGroupFileUploadId" aria-label="Ajouter image">
                        !-->
                    </div>
                    @endif
                    <div class='col-12'>
                        <label for="textAreaWineDescriptionId" class="form-label">Description</label>
                        <textarea class="form-control" id="textAreaWineDescriptionId" rows="3" name="description" {{ request()->routeIs('wines.show') ? 'disabled' : '' }}>{{ $wine->description }}</textarea>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="col-3 col-offset-4">
                    <a class="btn btn-secondary" href="{{ route('wines.index') }}">Annuler</a>
                    @if(request()->routeIs('wines.edit'))
                    <button class="btn btn-primary" type="submit">Sauvegarder</button>
                    @endif
                </div>
            </div>
        </div>
    @if(request()->routeIs('wines.edit'))
    </form>
    @endif
<div>
